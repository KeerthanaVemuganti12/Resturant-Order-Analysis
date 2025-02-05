Use restaurant_db;
-- View the menu_items table and write a query to find the number of items on the menu
Select *
from menu_items;

select count(*)
from menu_items;

-- What are the least and most expensive items on the menu?
select *
from menu_items
Order by price;

select *
from menu_items
Order by price desc;

-- How many Italian dishes are on the menu? What are the least and most expensive Italian dishes on the menu?
SELECT count(Category)
From menu_items
where category='Italian'

select *
from menu_items
where category='Italian'
Order By price;

select *
from menu_items
where category='Italian'
Order By price desc;




-- How many dishes are in each category? What is the average dish price within each category?
SELECT CATEGORY, COUNT(menu_item_id) AS num_items
FROM menu_items
Group by category

SELECT CATEGORY, AVG(menu_item_id) AS Avg_price
FROM menu_items
Group by category