-- What years are covered by the dataset?
SELECT DISTINCT year from population_years;

-- What is the largest population size for Gabon in this dataset?
select max(population)
from population_years
where country = 'Gabon';

-- What were the 10 lowest population countries in 2005?
select country
from population_years
where year = 2005
order by population
limit 10;

-- What are all distinct countries with a population of over 100 million in the year 2010?
select country
from population_years
where population > 100
  and year = 2010;

-- How many countries in this dataset have the word "Islands" in their name?
select count(distinct country)
from population_years
where country like '%Islands%';

-- What the difference in population between 2000 and 2010 in Indonesia?
select population
from population_years
where year = 2000
  and country = 'Indonesia';

select population
from population_years
where year = 2010
  and country = 'Indonesia';
