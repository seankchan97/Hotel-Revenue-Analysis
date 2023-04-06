/* 
Is our hotel revenue growing year by year?
Should we increase parking lot size?
What trends can we see in the data?
*/


with hotels as (
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

/*No revenue column but ADR,stays in weekends and weeknights columns can be used to create a new column (revenue), adr = daily rate */
/*
select 
arrival_date_year,
hotel,
round(sum((stays_in_week_nights + stays_in_weekend_nights)*adr),2) as Revenue 
from hotels
group by arrival_date_year,hotel

/*Query groups revenue by arrival date year and hotel type, rounded to two decimal places*/
/*Observations of data
Resort Hotel for the year 2020 saw a dip in revenue, this could be either due to incomplete dataset or revenue decrease
City Hotel saw a revenue increase from 2018 to 2019*/

select * from dbo.market_segment$
/*this query allows for us to see discount rate for specific market segments*/
*/


select * from hotels 
left join dbo.market_segment$
on hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = hotels.meal

/* now that I have created the neccesarry table for analysis, the database will be connected to microsoft BI/move forward with visualization*/
