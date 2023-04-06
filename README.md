# Hotel-Revenue-Analysis

Stakeholder questions:

Q1. Is our hotel revenue growing year by year?

Q2. Should we increase parking lot size?

Q3. What trends can we see in the data?


Step 1: Write a query that will create the neccesarry table for visualization

with hotels as (
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

select * from hotels 
left join dbo.market_segment$
on hotels.market_segment = market_segment$.market_segment
left join dbo.meal_cost$
on meal_cost$.meal = hotels.meal

Step 2: Visualize data
Connected data to Microsoft BI 
Key points of visualiztion, stakeholders will need the following to answer the presented questions:
-average adr (average daily rate)
-total nights stayed
-average discount 
-car spaces

[Hotel Revenue Analysis.pdf](https://github.com/seankchan97/Hotel-Revenue-Analysis/files/11173384/Hotel.Revenue.Analysis.pdf)
