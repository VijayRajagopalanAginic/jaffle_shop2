
    
    



select count(*) as validation_errors
from DEV.dbt_vrajagopalan.stg_payments
where payment_id is null


