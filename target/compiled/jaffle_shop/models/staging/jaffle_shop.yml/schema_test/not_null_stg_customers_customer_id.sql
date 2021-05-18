
    
    



select count(*) as validation_errors
from DEV.dbt_vrajagopalan.stg_customers
where customer_id is null


