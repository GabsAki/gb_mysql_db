select
	date_format(o.order_date, '%Y-%m-01') as month,
	r.region,
	p.category,
    p.sub_category,
    round(sum(op.sales), 2) as total_sales,
    round(sum(op.profit), 2) as total_profit,
    sum(quantity) as units_sold,
    round(sum(op.sales) / sum(quantity), 2) as average_sales_per_unit,
    round(sum(op.profit) / sum(quantity), 2) as average_profit_per_unit
from
	GBC_Superstore.orders_products op
    left join GBC_Superstore.products p on p.product_id = op.product_id
    left join GBC_Superstore.orders o on o.order_id = op.order_id
    left join GBC_Superstore.regions r on r.region_id = o.region_id
group by
	1, 2, 3, 4
order by
	1, 2, 3, 4