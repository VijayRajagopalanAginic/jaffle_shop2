
  create or replace  view DEV.dbt_vrajagopalan.stg_customers  as (
    select
    id as customer_id,
    first_name,
    last_name,
    email
from RAW.jaffle_shop.customers
  );
