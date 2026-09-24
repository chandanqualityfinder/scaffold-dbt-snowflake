{{ config(database='PYTEST_DB', schema='DBT_STAGING') }}

select
    pkid,
    str1,
    num1
from {{ source('raw_pytest', 'raw_table1') }}
where pkid is not null