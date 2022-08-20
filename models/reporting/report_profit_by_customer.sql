select
customerid,
segement,
country
from {{ ref('stg_orders') }}
group by
customerid,
segement,
country
