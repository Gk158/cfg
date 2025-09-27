with supplier as(
    select
            s_suppkey as supplier_id,
            s_name as name,
            s_phone as phone,
            updated_time
from {{source('src','suppliers')}}

)

select * from supplier

