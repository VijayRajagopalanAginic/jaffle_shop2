    select
        id as payment_id,
        order_id,
        payment_method,
        --`amount` is currently stored in cents, so we convert it to dollars
        {{ cents_to_dollar('amount') }} as amount
    from {{ source('jaffle_shop', 'payments') }}