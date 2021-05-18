
    
    




with all_values as (

    select distinct
        payment_method as value_field

    from DEV.dbt_vrajagopalan.stg_payments

),

validation_errors as (

    select
        value_field

    from all_values
    where value_field not in (
        'credit_card','coupon','bank_transfer','gift_card'
    )
)

select count(*) as validation_errors
from validation_errors


