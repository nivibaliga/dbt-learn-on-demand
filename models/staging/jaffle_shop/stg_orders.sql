with orders as (
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status,
        _etl_loaded_at
    --from SANDBOX_DBT_RAW_JAFFLE_SHOP.orders
    from {{ source('SANDBOX_DBT_RAW_JAFFLE_SHOP', 'orders') }}
)

select * from orders