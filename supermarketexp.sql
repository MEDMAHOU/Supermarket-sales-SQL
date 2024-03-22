--my dataset
select * from [supermarket].[dbo].[supermarket_sales - Sheet1];

--income by branch
select branch, round(sum(gross_income),2)as income
from dbo.[supermarket_sales - Sheet1]
group by Branch
order by income desc;

--income by city
select city, ROUND(sum(gross_income),2) as income
from dbo.[supermarket_sales - Sheet1]
group by City
order by income desc;

--income by customer type
select Customer_type, ROUND(sum(gross_income),2) as income
from dbo.[supermarket_sales - Sheet1]
group by Customer_type
order by income desc;

--income by gender
select Gender, ROUND(sum(gross_income),2) as income
from dbo.[supermarket_sales - Sheet1]
group by Gender
order by income desc;

--average rating by customer type
select Customer_type, round(AVG(Rating),2) as avg_rating
from dbo.[supermarket_sales - Sheet1]
group by Customer_type
order by avg_rating desc;

--average rating by gender
select Gender, ROUND(avg(rating),2) as avg_rating
from dbo.[supermarket_sales - Sheet1]
group by gender 
order by avg_rating desc;

--income by year
select month(date) as _year, ROUND(SUM(gross_income),2) as income
from dbo.[supermarket_sales - Sheet1]
group by month(date)
order by month(date);

--income by hour
SELECT DATEPART(hour, [time]) AS hour_, ROUND(SUM(gross_income), 2) AS rounded_gross_income
FROM dbo.[supermarket_sales - Sheet1]
GROUP BY DATEPART(hour, [time])
order by rounded_gross_income;

--the most payment methode used
select Payment, count(Payment) as total_of_use  from dbo.[supermarket_sales - Sheet1]
group by Payment
order by total_of_use desc;

-- income by product line
select Product_line, SUM(gross_income) as Income from dbo.[supermarket_sales - Sheet1]
group by Product_line
order by Income desc;

