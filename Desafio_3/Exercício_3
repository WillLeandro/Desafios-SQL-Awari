select
    Categoria,
    Soma_Total,
    round(sum( Soma_Total) over (partition by   '' order by Soma_Total desc),2) Soma_acumulada, 
    row_number() over (partition by '' order by Soma_Total asc ) as Ranqueamento,
 from  (       
          select 
              p.product_category_name Categoria,
              round(sum(pa.payment_value),2) Soma_Total,
          from `projeto-olist.olist_dados.olist_products_dataset` p
          join `projeto-olist.olist_dados.items_de_pedidos` i on i.product_id = p.product_id
          join  `projeto-olist.olist_dados.olist_orders_dataset` oc on oc.order_id = i.order_id
          join  `projeto-olist.olist_dados.olist_order_payments_dataset` pa on oc.order_id = pa.order_id
          where p.product_category_name is not null
          group by 1
       ) tab      
 order by 2 desc, 3 desc;
