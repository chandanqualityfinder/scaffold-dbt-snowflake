{{ config(database='PYTEST_DB', schema='DBT_MARTS') }}

select
    t1.pkid,
    t1.str1 as str1_table1,
    t1.num1,
    t2.str1 as str1_table2,
    t2.date1
from {{ ref('stg_table1') }} t1
inner join {{ ref('stg_table2') }} t2
    on t1.pkid = t2.pkid