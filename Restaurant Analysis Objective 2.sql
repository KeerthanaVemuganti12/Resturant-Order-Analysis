-- View the order_details table. What is the date range of the table?
select *
FROM order_details;

select min(order_date),max(order_date)
From order_details;


-- How many orders were made within this date range? 
SELECT count(distinct order_id)
from order_details;
-- How many items were ordered within this date range?
select count(*)
from order_details


-- Which orders had the most number of items?
select order_id, count(item_id) AS num_items
from order_details
group by order_id
order by num_items desc;


-- How many orders had more than 12 items?
select count(*) From 
(select order_id, count(item_id) AS num_items
from order_details
group by order_id
having num_items > 12) AS num_orders
