{% macro limit(orderdate) %}
{% if target.name == 'development'%}
where {{orderdate}} = dateadd('day', -30,current_timestamp)
{% endif %}
{% endmacro %}