-- Total Sales
select sum(sales) as total_sales
from blinkit_sales;

-- Average Sales
select avg(sales) as avg_sales
from blinkit_sales;

-- Maximum Sales
select sales, 
	   item_type,
       item_identifier
from blinkit_sales
order by sales desc
limit 1;

-- Minimum Sales
select sales , item_type
from blinkit_sales
order by sales
limit 1;

-- Average Rating
select avg(rating)
from blinkit_sales;

-- Highest Rated Product
SELECT item_identifier,
       item_type,
       rating
FROM blinkit_sales
ORDER BY rating DESC
LIMIT 1;

-- Lowest Rated Product
SELECT item_identifier,
       item_type,
       rating
FROM blinkit_sales
ORDER BY rating ASC
LIMIT 1;

-- Total Number of Unique Products
select count(distinct item_identifier) as total_unique_products
from blinkit_sales;




