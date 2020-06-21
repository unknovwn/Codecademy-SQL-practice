-- Distinct neigborhoods
select distinct neighborhood
from nomnom;

-- Cuisine types
select distinct cuisine
from nomnom;

-- Chinese restaurants
select *
from nomnom
where cuisine = 'Chinese';

-- Restaurants with reviews of 4 and above
select *
from nomnom
where review >= 4;

-- Restaurants that are italian and expensive
select *
from nomnom
where cuisine = 'Italian'
  and price = '$$$';

-- Restaurant that contains the word 'meatball' in its name
select *
from nomnom
where name like '%meatball%';

-- Restaurants spots in Midtown, Downtown and Chinatown
select *
from nomnom
where neighborhood = 'Midtown'
  or neighborhood = 'Downtown'
  or neighborhood = 'Chinatown';

-- Health inspection grade pending restaurants
select *
from nomnom
where health is null;

-- Top 10 restaurants ranking based on reviews
select *
from nomnom
order by review desc
limit 10;

-- New rating system
select name,
  case
    when review > 4.5 then 'Extraordinary'
    when review > 4 then 'Excellent'
    when review > 3 then 'Good'
    when review > 2 then 'Fair'
    else 'Poor'
  end as 'Review'
from nomnom;