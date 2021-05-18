
  create or replace  view DEV.dbt_vrajagopalan.stg_payments  as (
    select
        id as payment_id,
        order_id,
        payment_method,
        --`amount` is currently stored in cents, so we convert it to dollars
        amount / 100 as amount
    from RAW.jaffle_shop.payments
  );
