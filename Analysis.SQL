
/*Which country has the most people?*/
select country , population 
from world_population
where population>0
order by population desc
limit 1;





/* Which country has the highest growth rate?*/
select country , growth_rate
from world_population
where growth_rate>0
order by growth_rate desc
limit 1;





/* Which countries will add the most people to their populations next year?*/
select country ,migration_rate
from world_population
where migration_rate>0
order by migration_rate desc;





/* Which countries have a higher death rate than birth rate?*/
select country, death_rate , birth_rate
from world_population
where death_rate > birth_rate
and death_rate>0 and birth_rate >0
order by death_rate desc;





/*Which countries have the highest Population density*/
select country, max ( cast(population as float ) /cast (area as float ))
from world_population 
where population>0
and area >0
group by country
order by max desc;













