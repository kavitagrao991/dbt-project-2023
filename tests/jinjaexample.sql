{%- set category = "Furniture" -%}
select
orderid,
case when category = '{{category}}' then profit end as {{categoty}}_profit 
from {{ ref('stg_orders') }} 