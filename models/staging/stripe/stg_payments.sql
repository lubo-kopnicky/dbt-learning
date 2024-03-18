with 

source as (

    select * from {{ source('stripe', 'payment') }}

),

paymetns as (

    select orderid as order_id,
           id as customer_id,
           status,
           (amount / 100) as amount
    from source

)

select * from paymetns
