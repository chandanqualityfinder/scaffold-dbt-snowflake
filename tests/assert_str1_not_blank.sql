select *
from {{ ref('stg_table2') }}
where trim(str1) = ''