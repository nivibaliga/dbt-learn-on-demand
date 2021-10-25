with customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from SANDBOX_DBT_RAW_JAFFLE_SHOP.customers

)

select * from customers