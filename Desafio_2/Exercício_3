SELECT	
	i.seller_id Vendedor,
	p.product_category_name as Categoria,
	round(sum(i.price),2) valor_total_vendido 
FROM olist_order_items_dataset  i
join olist_products_dataset p on i.product_id = p.product_id
where p.product_category_name is not null and i.price >= 1000
group by 1,2
order by 3 desc;
