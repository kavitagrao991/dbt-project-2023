{% macro markup(ordersellingprice,ordercost) %}
({{ordersellingprice}}-{{ordercost}})/{{ordercost}}
{% endmacro %}