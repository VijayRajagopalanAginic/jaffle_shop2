
    
    



select count(*) as validation_errors
from DEV.dbt_vrajagopalan.stg_orders
where order_id is null


