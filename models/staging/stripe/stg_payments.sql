with payments as(
    select orderid as order_id,
           id as customer_id,
           amount / 100 as amount
    from `dbt-tutorial`.stripe.payment
)
select * from payments