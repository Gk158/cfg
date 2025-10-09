{%snapshot suppliers_snapshot%}

{{
    config(
        target_database='analytics',
        target_schema='snapshot',
        unique_key='supplier_id',
        strategy='timestamp',
        updated_at= 'updated_time',
    )
}}

select supplier_id,name,phone,updated_time
from {{ref('stg_suppliers')}}

{%endsnapshot%}