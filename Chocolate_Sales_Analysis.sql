Create database Chocolate_Sales;

use Chocolate_Sales;
Describe chocolate_sales_2025_dataset;

rename table chocolate_sales_2025_dataset to Choco;

Select * from Choco limit 5;
Select * from Choco;

-- Total number of Distinct Brands that are Sold
Select count(distinct Brand) Distinct_Brands from Choco;

-- Distinct Chocolate Brands that were sold
Select distinct Brand from Choco;

-- Brandwise Overall Revenue
Select Brand, round(sum(Revenue_USD),2) Total_Revenue from Choco group by Brand order by sum(Revenue_USD) Desc;

-- Brand with Highest Revenue.
Select Brand, round(Sum(Revenue_USD),2) Total_Revenue from Choco group by Brand order by Total_Revenue Desc limit 1;

-- Brand with the lowest revenue.
Select Brand,round(sum(Revenue_USD),2) Total_Revenue from Choco group by Brand order by Total_Revenue ASC limit 1;

Select Brand,Product_Type, round(sum(Revenue_USD),2) Total_Product_Revenue from Choco group by Brand,Product_Type order by Brand;