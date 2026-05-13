-- 1) Why Latte is Most Revenue Generating Item and Espresso the least Revenue Generating? 
-- Based on Number of Units Sold
Select coffee_name,count(coffee_name) units_sold from Coffee group by coffee_name order by count(coffee_name) desc;
-- Based on Average Price
Select coffee_name,round(sum(money)/count(coffee_name),2) avg_price from Coffee group by coffee_name order by round(sum(money)/count(coffee_name),2) desc; 
-- Based on the Product of Number of Units sold with Average Price.
Select coffee_name,count(coffee_name) units_sold,round(sum(money)/count(coffee_name),2) avg_price,round(count(coffee_name)*round(sum(money)/count(coffee_name),2),2) Avgprice_Unitssold_Product from Coffee group by coffee_name order by round(count(coffee_name)*round(sum(money)/count(coffee_name),2),2) desc; 

-- Based on Units Sold, Average Price and product of Units Sold and Average price Latte is high and Espresso is least.

-- 2) Why Night is Most Revenue Generating  and Morning the least Revenue Generating?
-- Based on Number of Units Sold
Select Time_of_Day,count(coffee_name) units_sold from Coffee group by Time_of_Day order by count(coffee_name) desc;
-- Based on Average Price
Select Time_of_Day, round(sum(money),2) Total_Revenue,count(Time_of_Day) no_of_Transactions, round(sum(money)/count(Time_of_Day),2)Avg_Price from Coffee group by Time_of_Day order by round(sum(money)/count(Time_of_Day),2) desc ;
-- Based on the Product of Number of Units sold with Average Price.
Select Time_of_Day, round(sum(money),2) Total_Revenue,count(Time_of_Day) no_of_Transactions, round(sum(money)/count(Time_of_Day),2)Avg_Price,round(count(Time_of_Day)*(sum(money)/count(Time_of_Day)),2) Avgprice_Unitssold_Product from Coffee group by Time_of_Day order by round(count(Time_of_Day)*(sum(money)/count(Time_of_Day)),2) desc ;

-- Even though the number of units sold for Night are 20 less than day Night has highest average price the product of number of units sold and average price is greater for NIght making it highest revenue generating time of the day.

-- Q3) Why Tuesday is highes revenue generating while Sunday is the least revenue generating
Select * from Coffee where Weekday='Tue';
Select Weekday, count(Weekday) from Coffee group by Weekday order by count(Weekday) desc;
-- Tuesday has highest number of tranassctions compared to other days 
Select Weekday, count(Weekday) from Coffee where Weekday='Tue' group by Weekday ;
-- The Average Price 
Select Weekday,count(Weekday), round(sum(money)/count(Weekday),2)Avg_Price_Trasnaction from Coffee group by Weekday order by  round(sum(money)/count(Weekday),2) desc; 
-- The number of transactions and the average price per transaction is very high for Tuesday are highest compared to others
Select Weekday,count(Weekday), round(sum(money)/count(Weekday),2)Avg_Price_Trasnaction, round((sum(money)/count(Weekday))*count(Weekday),2) Avgprie_Unit_Product from Coffee group by Weekday order by  round((sum(money)/count(Weekday))*count(Weekday),2) desc; 
-- The Number of transactions for Tuesday is High where as for Sunday it was least 
-- The Product of Average Price per trasnaction and total number of transaction for Tuesday is high and for Sunday it was low.
-- Even though Sunday has the Second highest Average Price per Transaction the Revenue is least because the number of units that were sold are very low compared to other weekdays.


-- Q4) Why MArch is highes trevenue generating and April is the lowest revenue genrating Month.
Select * from Coffee;
-- Number of Transactions
Select Month_name, count(Month_name) from Coffee group by Month_name order by count(Month_name) desc;
-- The number of trasnactions for March is highest with 494 transactions.
-- The number of trasnactions for March is least with 168 transactions.

-- Average Price Per Transaction for Each month.
Select Month_name,count(Month_name), round(sum(money)/count(Month_name),2)Avg_Price_Trasnaction from Coffee group by Month_name order by  round(sum(money)/count(Month_name),2) desc; 
-- Average price of March 32.17
-- Average price of April 34.05

-- Product of Average Price Per Product and Number of Units sold
Select Month_name,count(Month_name), round(sum(money)/count(Month_name),2)Avg_Price_Trasnaction, round((sum(money)/count(Weekday))*count(Month_name),2) Avgprie_Unit_Product from Coffee group by Month_name order by  round((sum(money)/count(Month_name))*count(Month_name),2) desc; 

-- The Product of Average Price per transaction to number of transactions
-- March -- 15891.64
-- April -- 5719.56
-- Even though the Average Price of Transaction for April is high compared to March April(34.05) > March(32.17), There was a huge difference in the volume of Sales March(494) >> April(168)
-- All the Above factors contribute to making march as Highes revenue generating month making April the lowest revenue generating month.

-- Q5) Why 10am is highest trevenue generating and 6am is the lowest revenue genrating Month.
Select * from Coffee;
-- Number of Transactions
Select hour_of_day, count(hour_of_day)No_of_Transactions from Coffee group by hour_of_day order by count(hour_of_day) desc;
-- The number of trasnactions for 10 am is highest with 328 transactions.
-- The number of trasnactions for 6 am is least with 5 transactions.

-- Average Price Per Transaction for Each Hour_of_day.
Select hour_of_day,count(hour_of_day)No_of_Transactions, round(sum(money)/count(hour_of_day),2)Avg_Price_Trasnaction from Coffee group by hour_of_day order by  round(sum(money)/count(hour_of_day),2) desc; 
-- Average price of 10 am 31.09
-- Average price of 6 am  29.88

-- Product of Average Price Per Product and Number of Units sold
Select hour_of_day,count(hour_of_day), round(sum(money)/count(hour_of_day),2)Avg_Price_Trasnaction, round((sum(money)/count(hour_of_day))*count(hour_of_day),2) Avgprie_Unit_Product from Coffee group by hour_of_day order by  round((sum(money)/count(hour_of_day))*count(hour_of_day),2) desc; 

-- The Product of Average Price per transaction to number of transactions
-- 10 am -- 10198.52
-- 6 am -- 149.4
-- Even though the Average Price of Transaction for  March 10 am(31.09) > 19 pm(33.85), There was a huge difference in the volume of Sales 10 am(328) >> 19 pm(229)
-- All the Above factors contribute to making 10 sm as Highest revenue generating hour of the day making 6 am the lowest revenue generating hour of the day.

