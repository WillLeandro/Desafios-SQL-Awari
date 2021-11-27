select
  count(i.order_id) as Quantidade,
  P.product_category_name Categoria,
  c.customer_state Estado
from clientes c
inner join olist_orders_dataset oc on c.customer_id = oc.customer_id
inner join olist_order_items_dataset i on oc.order_id = i.order_id
inner join olist_products_dataset p on i.product_id = p.product_id
group by 2,3
having Quantidade > 1000
order by 3,1 desc;
