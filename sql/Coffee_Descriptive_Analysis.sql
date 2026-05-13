Create database Coffee_Sales;

show databases;

use coffee_sales;

-- Describing the Table Meta Data
use coffee_sales;
show tables;

-- Renaming the coffe_sales table to coffee
rename table coffee_original to coffee;
describe coffee;

-- Exploratory Data Analysis
-- Sample data of the table
Select * from Coffee limit 5;
-- Retreiving the Number of Coffee Types Available
Select count(distinct coffee_name) No_Of_Varieties from Coffee;
-- Retreiving the types of Coffee available
Select distinct coffee_name Coffee_Names from Coffee;
-- Retreiving the different times in a day the coffee shop is available
Select distinct Time_of_Day from coffee;
-- No of different weekdays
Select distinct Weekday Day_of_Week from Coffee;
-- No of Different Months
Select Distinct Month_name Name_Of_Month from Coffee;

-- Exploratory Data Analysis
-- Revenue gerated through each type of Coffee
Select coffee_name Name_of_Coffee, round(sum(money),2) Total_Revenue from Coffee group by coffee_name order by sum(money) desc;
-- Highest Revenue Generating Coffee Type
Select coffee_name Name_of_Coffee, round(sum(money),2) Total_Revenue from Coffee group by coffee_name order by sum(money) desc limit 1;
-- Least Revenue Generating Coffee Type
Select coffee_name Name_of_Coffee, round(sum(money),2) Total_Revenue from Coffee group by coffee_name order by sum(money) limit 1;


-- Revenue gerated through each time of day
Select Time_of_Day, round(sum(money),2) Total_Revenue from Coffee group by Time_of_Day order by sum(money) desc;
-- Highest Revenue Generating time of day
Select Time_of_Day, round(sum(money),2) Total_Revenue from Coffee group by Time_of_Day order by sum(money) desc limit 1;
-- Least Revenue Generating time of day
Select Time_of_Day, round(sum(money),2) Total_Revenue from Coffee group by Time_of_Day order by sum(money) limit 1;

-- Analysis of Sales based on day of the week
Select * from Coffee;
Select Weekday,round(sum(money),2) Total_Revenue from Coffee group by Weekday order by round(sum(money),2) desc;
-- Highest Revenue Generating Weekday
Select Weekday,round(sum(money),2) Total_Revenue from Coffee group by Weekday order by round(sum(money),2) desc limit 1;
-- Least Revenue Generating Weekday
Select Weekday,round(sum(money),2) Total_Revenue from Coffee group by Weekday order by round(sum(money),2) limit 1;

-- Analysis of Sales based on day of the Month_name
Select * from Coffee;
Select distinct Month_name from Coffee;
Select Month_name,round(sum(money),2) Total_Revenue from Coffee group by Month_name order by round(sum(money),2) desc;
-- Highest Revenue Generating Month_name
Select Month_name,round(sum(money),2) Total_Revenue from Coffee group by Month_name order by round(sum(money),2) desc limit 1;
-- Least Revenue Generating Month_name
Select Month_name,round(sum(money),2) Total_Revenue from Coffee group by Month_name order by round(sum(money),2) limit 1;


-- Time of Day Sales at March
Select Time_of_Day,round(sum(money),2) Total_Revenue from Coffee group by Time_of_Day order by round(sum(money),2) desc;

-- Hourly Analysis
Select distinct hour_of_day from Coffee;
Select hour_of_day, round(sum(money),2) Total_Revenue from Coffee group by hour_of_day order by round(sum(money),2) desc;
-- Highest Revenue Generating Hour
Select hour_of_day, round(sum(money),2) Total_Revenue from Coffee group by hour_of_day order by round(sum(money),2) desc limit 1;
-- Least Revenue Generating Hour
Select hour_of_day, round(sum(money),2) Total_Revenue from Coffee group by hour_of_day order by round(sum(money),2)  limit 1;


-- Monthwise indepth coffee sales analysis
-- Monthwise highest and lowest coffee sales for March
-- Monthwise coffee sales for March
Select * from Coffee;
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='March' group by Month_name,coffee_name order by round(sum(money),2) desc;
-- Highest Revenue generating coffee of March
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='March' group by Month_name,coffee_name order by round(sum(money),2) desc limit 1;
-- Lowest Revenue generating coffee of March
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='March' group by Month_name,coffee_name order by round(sum(money),2)  limit 1;


-- Monthwise coffee sales for April
Select * from Coffee;
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='April' group by Month_name,coffee_name order by round(sum(money),2) desc;
-- Highest Revenue generating coffee of April
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='April' group by Month_name,coffee_name order by round(sum(money),2) desc limit 1;
-- Lowest Revenue generating coffee of April
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='April' group by Month_name,coffee_name order by round(sum(money),2)  limit 1;


-- Monthwise coffee sales for May
Select * from Coffee;
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='May' group by Month_name,coffee_name order by round(sum(money),2) desc;
-- Highest Revenue generating coffee of May
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='May' group by Month_name,coffee_name order by round(sum(money),2) desc limit 1;
-- Lowest Revenue generating coffee of May
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='May' group by Month_name,coffee_name order by round(sum(money),2)  limit 1;

-- Monthwise coffee sales for June
Select * from Coffee;
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='June' group by Month_name,coffee_name order by round(sum(money),2) desc;
-- Highest Revenue generating coffee of June
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='June' group by Month_name,coffee_name order by round(sum(money),2) desc limit 1;
-- Lowest Revenue generating coffee of June
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='June' group by Month_name,coffee_name order by round(sum(money),2)  limit 1;

-- Monthwise coffee sales for July
Select * from Coffee;
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='July' group by Month_name,coffee_name order by round(sum(money),2) desc;
-- Highest Revenue generating coffee of July
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='July' group by Month_name,coffee_name order by round(sum(money),2) desc limit 1;
-- Lowest Revenue generating coffee of July
Select Month_name, coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='July' group by Month_name,coffee_name order by round(sum(money),2)  limit 1;
