select 
	c.customer_id as clientess,
	count(p.order_id) as Quantidade,
	avg(pa.payment_value) as Media_Pagamenos,
	sum(pa.payment_value) as Soma_Pagamentos
from clientes c
inner join olist_orders_dataset as p on c.customer_id = p.customer_id
inner join olist_order_payments_dataset as pa on p.order_id = pa.order_id
group by clientess
order by Soma_pagamentos desc
limit 5;
