-- write the SQL query to fetch the following monthly metrics from dataset for the:

-- 1. the average number of trip on saturdays
select avg("trip_distance") as avg_trip_distance, "days"
from
(select "tpep_pickup_datetime", to_char ("tpep_pickup_datetime", 'day') as "days", "trip_distance"
from "yellow_tripdata_2015-01") as "table1"
where "days" like '%sat%'
group by "days"
limit 10;

-- 2. The average fare(fare_amount) per trip on saturday
select "days", avg("fare_amount") as "avg_fare_amount"
from
(select to_char("tpep_pickup_datetime", 'day') as "days", "fare_amount" 
from "yellow_tripdata_2015-01") as "table2"
where "days" like '%sat%'
group by "days"
order by "avg_fare_amount"
limit 10;


-- 3.  The average duration per trip on saturdays
select "days", avg(duration) as "avg_duration"
from
(select extract('second' from "pickup") as "second_pickup", extract('second'from "dropoff") as "second_dropoff",
"days", sum("pickup" - "dropoff") as "duration"
from
(select "trip_distance", date_trunc('day', "tpep_pickup_datetime") as "pickup", 
 date_trunc('day', "tpep_dropoff_datetime") as "dropoff", 
 to_char("tpep_pickup_datetime", 'days') as "days" 
from "yellow_tripdata_2015-01") as "table3"
group by "pickup", "dropoff", "days" ) as "table4"
where "days" like '%sat%'
group by "days"
order by "avg_duration"
limit 10;


-- 4.The average number of trip on saturdays
select avg("trip_distance") as avg_trip_distance, "days"
from
(select "tpep_pickup_datetime", to_char ("tpep_pickup_datetime", 'day') as "days", "trip_distance"
from "yellow_tripdata_2015-01") as "table1"
where "days" like '%sun%'
group by "days"
limit 10;

-- 5. The average fare(fare_amount) per trip on saturday
select "days", avg("fare_amount") as "avg_fare_amount"
from
(select to_char("tpep_pickup_datetime", 'day') as "days", "fare_amount" 
from "yellow_tripdata_2015-01") as "table2"
where "days" like '%sun%'
group by "days"
order by "avg_fare_amount"
limit 10;

-- 3.  The average duration per trip on sundays
select "days", avg(duration) as "avg_duration"
from
(select extract('second' from "pickup") as "second_pickup", extract('second'from "dropoff") as "second_dropoff",
"days", sum("pickup" - "dropoff") as "duration"
from
(select "trip_distance", date_trunc('day', "tpep_pickup_datetime") as "pickup", 
 date_trunc('day', "tpep_dropoff_datetime") as "dropoff", 
 to_char("tpep_pickup_datetime", 'days') as "days" 
from "yellow_tripdata_2015-01") as "table3"
group by "pickup", "dropoff", "days" ) as "table4"
where "days" like '%sun%'
group by "days"
order by "avg_duration"
limit 10;
