CREATE DATABASE blinkit_project;
USE blinkit_project;
CREATE TABLE blinkit_sales (
    item_fat_content VARCHAR(20),
    item_identifier VARCHAR(20),
    item_type VARCHAR(100),
    outlet_establishment_year INT,
    outlet_identifier VARCHAR(20),
    outlet_location_type VARCHAR(20),
    outlet_size VARCHAR(20),
    outlet_type VARCHAR(100),
    item_visibility DECIMAL(10,6),
    item_weight VARCHAR(20),
    sales DECIMAL(10,4),
    rating DECIMAL(3,1)
);

-- total records
select count(*) as total_records
from blinkit_sales;

-- View Dataset
select *
from blinkit_sales
limit 10;

-- Unique Item Categories
select distinct item_type
from blinkit_sales;

-- Count of Item Categories
select count(distinct item_type) as uniue_item_category
from blinkit_sales;

-- Unique Outlet Types
select distinct outlet_type
from blinkit_sales;

-- Distinct Fat Content
select distinct item_fat_content
from blinkit_sales;

-- Duplicate Products
select distinct item_identifier
from blinkit_sales;

-- Outlet Establishment Years
select distinct outlet_establishment_year
from blinkit_sales;

-- Total Number of Outlets
select count(distinct outlet_identifier) as Total_Number_of_Outlets
from blinkit_sales;

-- Missing Values
SELECT
    COUNT(*) - COUNT(item_fat_content) AS missing_item_fat_content,
    COUNT(*) - COUNT(item_identifier) AS missing_item_identifier,
    COUNT(*) - COUNT(item_type) AS missing_item_type,
    COUNT(*) - COUNT(outlet_establishment_year) AS missing_outlet_establishment_year,
    COUNT(*) - COUNT(outlet_identifier) AS missing_outlet_identifier,
    COUNT(*) - COUNT(outlet_location_type) AS missing_outlet_location_type,
    COUNT(*) - COUNT(outlet_size) AS missing_outlet_size,
    COUNT(*) - COUNT(outlet_type) AS missing_outlet_type,
    COUNT(*) - COUNT(item_visibility) AS missing_item_visibility,
    COUNT(*) - COUNT(item_weight) AS missing_item_weight,
    COUNT(*) - COUNT(sales) AS missing_sales,
    COUNT(*) - COUNT(rating) AS missing_rating
FROM blinkit_sales;
SELECT COUNT(*) AS blank_item_weight
FROM blinkit_sales
WHERE item_weight = '' OR item_weight IS NULL;

-- Duplicate Item Identifiers
SELECT 
    item_identifier,
    COUNT(*) AS duplicate_count
FROM blinkit_sales
GROUP BY item_identifier
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;






