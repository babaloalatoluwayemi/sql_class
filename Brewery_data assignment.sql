-- section A no 1
select "YEARS", sum("PROFIT") as "TOTAL_PROFIT"
from "Brewery_data"
where "YEARS" in ('2017', '2018', '2019')
group by "YEARS";


-- section A no 2



-- section A no 3
select "COUNTRIES", sum("PROFIT") as "TOTAL_PROFIT"
from "Brewery_data"
where "YEARS" = 2019
group by "COUNTRIES"
order by "TOTAL_PROFIT" desc
limit 1;


-- section A no 4
select "YEARS", sum("PROFIT") as "TOTAL_PROFIT"
from "Brewery_data"
group by "YEARS"
order by "TOTAL_PROFIT"
limit 1;


-- section A no 5
select "MONTHS", sum ("PROFIT") as "TOTAL_PROFIT"
from "Brewery_data"
group by "MONTHS"
order by "TOTAL_PROFIT" asc
limit 1;


-- section A no 6
select "MONTHS", "YEARS", "PROFIT"
from "Brewery_data"
where "MONTHS" in ('December')
and "YEARS" = '2018'
order by  "PROFIT" 
limit 1;


-- section A no 7
select "MONTHS", "YEARS", "PROFIT"
from "Brewery_data"
where "YEARS" = '2019'
order by "PROFIT"
limit 1;


-- section A no 8
select "BRANDS", "PROFIT", "COUNTRIES"
from "Brewery_data"
where "COUNTRIES" = 'Senegal'
order by "PROFIT" desc
limit 1;


-- section A no 1
select "BRANDS", sum("QUANTITY") as "QUANTITIES", "COUNTRIES" 
from "Brewery_data"
where "COUNTRIES" IN ('Benin','Senegal','Togo')
group by "BRANDS","COUNTRIES"
order by "QUANTITIES" desc 
limit 3;


-- section B no 2
select "BRANDS", sum("QUANTITY") as "QUANTITIES", "COUNTRIES" 
from "Brewery_data"
where "COUNTRIES" = 'Ghana'
group by "BRANDS","COUNTRIES"
order by "QUANTITIES" desc 
limit 2;


-- section B no 3
select distinct "BRANDS" 
from "Brewery_data"
where "COUNTRIES" = 'Nigeria' 
and "BRANDS" 
not in ('beta malt', 'grand malt');


-- section B no 4
select distinct "BRANDS", "COUNTRIES","YEARS"
from "Brewery_data"
where "COUNTRIES" in ('Ghana', 'Nigeria') 
and "YEARS" in ('2018', '2019')
and "BRANDS" in ('beta malt','grand malt')
group by "BRANDS", "COUNTRIES", "YEARS"
order by "BRANDS" desc
limit 10;


-- section B no 5
select distinct "BRANDS", sum ("QUANTITY") as "QUANTITIES","COUNTRIES" 
from "Brewery_data"
where "YEARS" = 2019
and "COUNTRIES" = 'Nigeria'
group by "BRANDS", "YEARS", "COUNTRIES"
Order by "QUANTITIES"  desc
limit 1;


-- section B no 6
select "BRANDS", "COUNTRIES","REGION" "QUANTITY"
from "Brewery_data"
where "COUNTRIES" = 'Nigeria'
and "REGION" = 'southsouth'
order by "QUANTITY" desc
limit 1;


-- section B no 7
select distinct "BRANDS", "COUNTRIES"
from "Brewery_data"
where "COUNTRIES" = 'Nigeria'
and "BRANDS" not in ('beta malt','grand malt')
group by "BRANDS", "COUNTRIES"
order by "BRANDS" desc
limit 10;


-- selection B no 8
select distinct "REGION", sum ("QUANTITY") as "QUANTITIES"
from "Brewery_data"
where "BRANDS" = 'budweiser'
and "COUNTRIES" = 'Nigeria'
group by "REGION"
limit 20;


-- section B no 9
select distinct "REGION", sum ("QUANTITY") as "QUANTITIES"
from "Brewery_data"
where "YEARS" = 2019
and "BRANDS" = 'budweiser'
and "COUNTRIES" = 'Nigeria'
group by "REGION";


-- section C no 1
select distinct "COUNTRIES", sum ("QUANTITY") as "QUANTITIES"
from "Brewery_data"
where"BRANDS" 
not in ('beta malt', 'grand malt')
group by "COUNTRIES"
order by "QUANTITIES" desc
limit 1;


-- section C no 2
select distinct "SALES_REP", sum ("QUANTITY") as "QUANTITIES"
from "Brewery_data"
where "BRANDS" = 'budweiser'
AND "COUNTRIES" = 'Senegal'
group by "SALES_REP"
order by "QUANTITIES" desc
limit 1;


-- section c no 3
select  distinct "COUNTRIES", "PROFIT", "YEARS", "MONTHS"
from "Brewery_data"
where "MONTHS" in ('October','November','December')
and "YEARS" = 2019
order by "PROFIT" desc
limit 1;







