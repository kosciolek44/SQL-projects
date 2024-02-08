-- Select query that returns total transactions value
select COUNT(Car_id) as 'Total Transactions'
from [Car Sales]

-- Select query that totals orders by customer gender indicating customer target.
select Gender, COUNT(Gender) as 'Orders by Gender'
from [Car Sales]
group by Gender;

-- Revenue for every distinct dealer in 2022.

-- Declaring a variable.
declare @monthsPerYear float = 12

-- A select query that sums up the price of a car for each distinct dealer and calculates the average monthly income over time (in 2022) using the declared variable, converting the value into currency, sorting from the largest amount.
select Dealer_Name as Dealer, FORMAT(SUM(Price), 'C') as 'Annual Revenue in 2022', FORMAT(SUM(Price)/@monthsPerYear, 'C') as 'Average Monthly Revenue in 2022'
from [Car Sales]
where Date BETWEEN '2022.01.01' AND '2022.12.31'
group by Dealer_Name
order by Dealer_Name;

-- Select query that selects top 1 car dealer by most orders for specified region(in this case "Austin").
select top 1 Dealer_No as 'Dealer',COUNT(Dealer_Region) as 'Most orders in specified region'
from [Car Sales]
where Dealer_Region = 'Austin'
group by Dealer_No;

-- Select query that selects top 10 most selling car models .
with x as
(
    select Company as Brand, Model,COUNT(model) as Quantity
    from [Car Sales]
    group by Company, Model
)
select top 10 x.Brand, x.Model, x.Quantity
from x
order by Quantity desc;