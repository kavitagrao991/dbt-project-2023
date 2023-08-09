with orders as(
    select * from {{ ref('raw_orders') }}
)
select
    orderid,
    sum(ORDERSELLINGPRICE) as sell_price
from orders 
group by orderid
having sell_price<0