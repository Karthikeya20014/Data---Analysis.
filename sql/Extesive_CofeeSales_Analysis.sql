use coffee_sales;

Select * from Coffee;

-- Extensive Analysis

-- Analyzing Type of Coffee Sold at Each Time of Day
-- Analyzing the sales perfomance at Night as Night is Highest Revenue generating time.
Select * from Coffee;
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Night' group by Time_of_Day,coffee_name order by round(sum(money),2) desc;
-- Most Revenue Generating Cofee in Night
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Night' group by Time_of_Day,coffee_name order by round(sum(money),2) desc limit 1;
-- Most Sold Coffee at night
Select Time_of_Day,coffee_name,count(coffee_name) units_sold from Coffee where Time_of_Day='Night' group by Time_of_Day,coffee_name order by count(coffee_name) desc limit 1;
-- Least Revenue Generating Coffee in Night
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Night' group by Time_of_Day,coffee_name order by round(sum(money),2) limit 1;
-- Least sold Coffee at night
Select Time_of_Day,coffee_name,count(coffee_name) units_sold from Coffee where Time_of_Day='Night' group by Time_of_Day,coffee_name order by count(coffee_name)  limit 1;


-- Analyzing the sales perfomance at Afternoon
Select * from Coffee;
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Afternoon' group by Time_of_Day,coffee_name order by round(sum(money),2) desc;
-- Most Revenue Generating Cofee in Afternoon
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Afternoon' group by Time_of_Day,coffee_name order by round(sum(money),2) desc limit 1;
-- Least Revenue Generating Coffee in Afternoon
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Afternoon' group by Time_of_Day,coffee_name order by round(sum(money),2) limit 1;
-- Most Sold Coffee at Afternoon
Select Time_of_Day,coffee_name,count(coffee_name) units_sold from Coffee where Time_of_Day='Afternoon' group by Time_of_Day,coffee_name order by count(coffee_name) desc limit 1;
-- Least Sold Coffee at Afternoon
Select Time_of_Day,coffee_name,count(coffee_name) units_sold from Coffee where Time_of_Day='Afternoon' group by Time_of_Day,coffee_name order by count(coffee_name)  limit 1;


-- Analyzing the sales perfomance at Daytime
Select * from Coffee;
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Morning' group by Time_of_Day,coffee_name order by round(sum(money),2) desc;
-- Most Revenue Generating Cofee in Morning
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Morning' group by Time_of_Day,coffee_name order by round(sum(money),2) desc limit 1;
-- Most Sold Coffee at daytime
Select Time_of_Day,coffee_name,count(coffee_name) units_sold from Coffee where Time_of_Day='Morning' group by Time_of_Day,coffee_name order by count(coffee_name) desc limit 1;
-- Least Revenue Generating Coffee in Morning
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Morning' group by Time_of_Day,coffee_name order by round(sum(money),2) limit 1;
-- Least Sold Coffee at daytime
Select Time_of_Day,coffee_name,count(coffee_name) units_sold from Coffee where Time_of_Day='Morning' group by Time_of_Day,coffee_name order by count(coffee_name) limit 1;

-- Extensive Analysis for the highest revenue generating time of day Night.
-- Highest Reveue Generating Coffee at night.
Select coffee_name, round(sum(money),2) Total_Revenue from Coffee group by coffee_name order by round(sum(money),2) desc;
-- Most Sold Coffee at Night
Select coffee_name, count(coffee_name) units_sold from Coffee group by coffee_name order by count(coffee_name) desc;
-- Least Revenue Generating Coffee in Night
Select Time_of_Day,coffee_name,round(sum(money),2) Total_Revenue from Coffee where Time_of_Day='Night' group by Time_of_Day,coffee_name order by round(sum(money),2) limit 1;
-- Least sold Coffee at night
Select Time_of_Day,coffee_name,count(coffee_name) units_sold from Coffee where Time_of_Day='Night' group by Time_of_Day,coffee_name order by count(coffee_name)  limit 1;

Select * from Coffee;
-- At what day there were many of the night sales happening
Select Weekday,count(Time_of_day) from Coffee where Month_name='March' group by Weekday order by count(Time_of_day) desc;


-- Extensive Analysis for most Revenue generating day Tuesday
Select * from Coffee where Weekday='Tue';

-- Day time wise units sales on Tuesday
Select Time_of_Day,count(*) No_of_Trasnactions from Coffee where Weekday='Tue' group by Time_of_Day order by count(*) desc;
-- Day time wise revenue generation on Tuesday
Select Time_of_Day,round(sum(money),2) Total_Revenue  from Coffee where Weekday='Tue' group by Time_of_Day order by round(sum(money),2)  desc;

-- Coffee type sales on Tuesday
-- Coffee type number of transactions on Tuesday.
Select coffee_name,count(*) No_of_Trasnactions from Coffee where Weekday='Tue' group by coffee_name order by count(*) desc;
-- Coffee type revenue generating on tuesday
Select coffee_name,round(sum(money),2) Total_Revenue from Coffee where Weekday='Tue'  group by coffee_name order by round(sum(money),2) desc;

-- Coffee type sales for Tuesday at Morning
-- Most Coffee Sold on Tuesday Morning
Select coffee_name,count(*) No_of_Trasnactions from Coffee where Weekday='Tue' and Time_of_Day='Morning' group by coffee_name order by count(*) desc;
-- Most Revenue Generating Coffee on Tuesday Morning
Select coffee_name,round(sum(money),2) Total_Revenue from Coffee where Weekday='Tue' and Time_of_Day='Morning' group by coffee_name order by round(sum(money),2) desc;

-- Extensive Analysis for High Revenue Generating Month of March
-- March month highest revneue generating Coffee type
Select * from Coffee;
-- Coffee type Revenue in the month of March 
Select coffee_name,round(sum(money),2) Total_Revenue from Coffee where Month_name='March' group by coffee_name order by round(sum(money),2) desc;
-- Coffee type number of units sold in the month of March
Select coffee_name,count(coffee_name) no_of_units from Coffee where Month_name='March' group by coffee_name order by count(coffee_name)  desc;


-- Extensive Analysis for High Revenue Generating Time of Day 10
-- Time 10 highest revneue generating Coffee type
Select * from Coffee;
-- Coffee type Revenue in the month of March 
Select coffee_name,round(sum(money),2) Total_Revenue from Coffee where hour_of_day=10 group by coffee_name order by round(sum(money),2) desc;
-- Coffee type number of units sold in the month of March
Select coffee_name,count(coffee_name) no_of_units from Coffee where hour_of_day=10 group by coffee_name order by count(coffee_name)  desc;