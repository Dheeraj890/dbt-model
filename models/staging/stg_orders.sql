select 
-- from raw orders
o.orderid,
o.orderidate,
o.shipdate,
o.shipmode,
o.ordersellingprice - o.ordercostprice as orderprofit,
--from customer
c.customername,
c.segement,
c.country,
-- from product
p.category,
p.productname,
p.subcategory
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customers') }} as c
on o.orderid=c.customerid
left join {{ ref('raw_products') }} as p
on o.productid=p.productid