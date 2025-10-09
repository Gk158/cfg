{{ config(materialized='incremental',unique='supplier_id',alias='int_suppliers') }}

with supplier as (
    select
        supplier_id
        name, 
        phone, 
        updated_time
    from {{ ref("stg_suppliers") }}
    {% if is_incremental() %}
        where updated_time > (select max(updated_time) from {{ this }})
    {% endif %}
)

select * from supplier
