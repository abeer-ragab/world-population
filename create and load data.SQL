create table world_population
 (id int primary key , country text not null , Area int , population int, population_growth float ,
  Birth_rate float , Death_rate float , migration_rate float);




COPY world_population FROM 'D:\World Population.csv' DELIMITER ',' CSV HEADER null '';

select * from world_population;
















