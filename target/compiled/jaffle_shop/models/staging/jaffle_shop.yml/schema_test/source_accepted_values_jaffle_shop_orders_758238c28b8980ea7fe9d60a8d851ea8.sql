
    
    




with all_values as (

    select distinct
        status as value_field

    from RAW.jaffle_shop.orders

),

validation_errors as (

    select
        value_field

    from all_values
    where value_field not in (
        'placed','shipped','completed','return_pending','returned'
    )
)

select count(*) as validation_errors
from validation_errors


