select * from trips;

select * from riders;

select * from cars;

-- Trip log with the trips and its users
select *
from trips
left join riders
  on trips.rider_id = riders.id;

-- Trip log with cars
select *
from trips
join cars
  on trips.car_id = cars.id;

-- Add new riders data
select *
from riders
union
select *
from riders2;

-- Average cost for a trip
select round(avg(cost), 2) as 'average_cost'
from trips;

-- All riders who have used REBU less than 500 times
select *
from riders
where total_trips < 500
union
select *
from riders2
where total_trips < 500;

-- Active cars
select count(*) as 'active_cars'
from cars
where status = 'active';

-- Two cars with highest trips completed
select *
from cars
order by trips_completed desc
limit 2;