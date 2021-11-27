select      
      concat(timestamp_diff(order_delivered_carrier_date, order_purchase_timestamp, day), " - Dias") as tempo_de_postagem,
      timestamp_diff(order_estimated_delivery_date, order_delivered_customer_date, day) as Prazo_de_Entrega,
    from `projeto-olist.olist_dados.olist_orders_dataset` oc
inner join `projeto-olist.olist_dados.items_de_pedidos` i on i.order_id = oc.order_id
inner join `projeto-olist.olist_dados.clientes` c on oc.customer_id = c.customer_id
inner join `projeto-olist.olist_dados.olist_sellers_dataset` s on s.seller_id = i.seller_id
where c.customer_state !=  s.seller_state and oc.order_status = 'delivered'
group by 1,2
