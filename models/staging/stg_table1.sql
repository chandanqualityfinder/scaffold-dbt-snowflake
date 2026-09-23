select
    pkid,
    str1,
    str2
from {{ source('raw_pytest', 'raw_table1') }}
where pkid is not null