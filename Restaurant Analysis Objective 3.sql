-- Combine the menu_items and order_details tables into a single table
   SELECT * FROM menu_items;
   SELECT * FROM order_details;
SELECT *
FROM Order_details od Left join menu_items mi
     ON od.item_id = mi.menu_item_id;
-- What were the least and most ordered items? What categories were they in?
-- least orderd item
SELECT item_name,category, count(order_details_id) AS num_purchases
FROM Order_details od Left join menu_items mi
     ON od.item_id = mi.menu_item_id
group by  item_name, category
order by num_purchases; 
 -- Most Orderd items
 SELECT item_name,category, count(order_details_id) AS num_purchases
FROM Order_details od Left join menu_items mi
     ON od.item_id = mi.menu_item_id
group by  item_name, category
order by num_purchases desc; 


-- What were the top 5 orders that spent the most money?
select order_id,sum(price) AS total_spend
FROM Order_details od Left join menu_items mi
     ON od.item_id = mi.menu_item_id
group by  order_id
order by total_spend DESC
LIMIT 5;


-- View the details of the highest spend order. Which specific items were purchased?
select category, count(item_id) AS num_items
FROM order_details od left join menu_items mi
	ON od.item_id = mi.menu_item_id
where order_id= 440
group by category;


--  View the details of the top 5 highest spend orders
select order_id,category, count(item_id) AS num_items
FROM order_details od left join menu_items mi
	ON od.item_id = mi.menu_item_id
where order_id in(440, 2075, 1957, 330, 2675)
group by category,order_id;
