{% test no_blank_or_stray_str(model, column_name) %}

select *
from {{ model }}
where trim({{ column_name }}) = ''
   or {{ column_name }} != trim({{ column_name }})

{% endtest %}