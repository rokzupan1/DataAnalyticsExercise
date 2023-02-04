SELECT
	ord.order_id,
	CONCAT(cus.first_name, ' ', cus.last_name)  customers,
	cus.city,
	cus.state,
	ord.order_date,
	SUM(ite.quantity) AS 'total_units',
	SUM(ite.quantity * ite.list_price) AS 'revenue',
	pro.product_name,
	ctg.category_name,
	sto.store_name,
	CONCAT(stf.first_name, ' ', stf.last_name)  salesrep
FROM sales.orders ord
JOIN sales.customers cus
ON ord.customer_id = cus.customer_id
JOIN sales.order_items ite
ON ord.order_id= ite.order_id
JOIN production.products pro
ON ite.product_id = pro.product_id
JOIN production.categories ctg
ON pro.category_id = ctg.category_id
JOIN sales.stores sto
ON ord.store_id = sto.store_id
JOIN sales.staffs stf
ON ord.staff_id = stf.staff_id
GROUP BY 
	ord.order_id,
	CONCAT(cus.first_name, ' ', cus.last_name),
	cus.city,
	cus.state,
	ord.order_date,
	pro.product_name,
	ctg.category_name,
	sto.store_name,
	CONCAT(stf.first_name, ' ', stf.last_name)
