
    
    



select count(*) as validation_errors
from (

    select
        order_id

    from DEV.dbt_vrajagopalan.stg_orders
    where order_id is not null
    group by order_id
    having count(*) > 1

) validation_errors


