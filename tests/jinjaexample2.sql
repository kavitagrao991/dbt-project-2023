{%- set category = ["Furniture","office","technology"] -%}

select
orderid,
{% for category in category %}
sum(case when category = '{{category}}' then profit end) as {{category}}_profit 
{% if not loop.last %}, {% endif %}
{% endfor %}
from {{ ref('stg_orders') }} 
group by 1