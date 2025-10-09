with supplier as (
    select
        s_suppkey as supplier_id,
        s_name as name,
        s_phone as phone,
        s_acctbal as accountbal,
        updated_time,
        s_name || ' ' || s_phone as namephone
    from sourcedb.mk_mall.suppliers
    limit 10
)

select * from supplier
