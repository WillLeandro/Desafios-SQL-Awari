select
    Clientes,
    Data_Aprovacao,
    pagamentos_apovados,
round(sum( pagamentos_apovados) over (partition by Clientes),2) valor_total,
from        (select 
          oc.customer_id Clientes,
           oc.order_approved_at Data_Aprovacao,
           pa.payment_value pagamentos_apovados,
           sum(pa.payment_value) over (partition by oc.customer_id) valor_total,     
        from `projeto-olist.olist_dados.olist_orders_dataset` oc
        inner join `projeto-olist.olist_dados.olist_order_payments_dataset` pa on pa.order_id = oc.order_id) as tab
where pagamentos_apovados != valor_total
