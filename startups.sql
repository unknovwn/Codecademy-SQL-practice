-- Total number of companies
select count(*) as 'Total companies'
from startups;

-- Total value of all companies
select sum(valuation) as 'Total value'
from startups;

-- Highest amount raised during the 'Seed' stage
select max(raised) as 'Max raised during the seed stage'
from startups
where stage = 'Seed';

-- Year when the oldest company was founded
select min(founded) as 'Year when the oldest company was founded'
from startups;

-- Average valuation
select avg(valuation) as 'Average valuation'
from startups;

-- Average valuation in each category
select category, round(avg(valuation), 2) as 'Average valuation'
from startups
group by 1
order by 2 desc;

-- Categories with the total number of companies that belong to them
select category, count(*) as 'Number of companies'
from startups
group by 1;

-- Most competitive markets
select category, count(*) as 'Number of companies'
from startups
group by 1
having count(*) > 3
order by 2 desc;

-- The average size of a startup in each location
select location, avg(employees) as 'Size'
from startups
group by 1;

-- With the sizes above 500
select location, avg(employees) as 'Size'
from startups
group by 1
having avg(employees) > 500;