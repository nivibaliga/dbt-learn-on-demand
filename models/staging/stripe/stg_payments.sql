with payment as (

    select
        id as customer_id,
        orderid as order_id,
        paymentmethod,
        status,
        amount,
        created,
        _batched_at
    --from SANDBOX_DBT_STRIPE.payment
    from {{ source('SANDBOX_DBT_STRIPE','payment') }}

)

select * from payment