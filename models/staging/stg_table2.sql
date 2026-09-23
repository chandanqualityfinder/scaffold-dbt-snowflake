{{ config(database='PYTEST_DB', schema='DBT_STAGING') }}

select
    pkid,
    str1,
    date1
from {{ source('raw_pytest', 'raw_table2') }}
where pkid is not null