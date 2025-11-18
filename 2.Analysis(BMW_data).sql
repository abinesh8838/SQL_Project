use bmw_db;

select * from bmw_car;


-- Average Price by Fuel Type
select 
	fuel_type, round(avg(price_usd),2) as avg_price 
from 
	bmw_car 
group by 
	fuel_type 
order by 
	avg_price desc;
    
    
-- Top 5 Most Expensive Cars in Each Sales Classification
select
	model, price_usd, sales_classification 
from 
	(select model, price_usd, sales_classification, 
		    row_number() over(partition by sales_classification order by price_usd desc) as row_classific 
	 from bmw_car) as ranked_cars
where row_classific <= 5;


-- Total Sales Volume by Region and Year
select 
	region, year, sum(sales_volume) as total_sales_volume 
from 
	bmw_car 
group by 
	region, year 
order by 
	year, total_sales_volume desc;


-- Count of Cars Sold by Transmission Type
select 
	transmission, 
    sum(sales_volume) as count_car_sold
from 
	bmw_car
group by 
	transmission
order by 
	count_car_sold desc;


-- Average Mileage by Transmission
select 
	transmission, 
    avg(mileage_km) as avg_mileage 
from 
	bmw_car
group by
	transmission
order by
	avg_mileage desc;


-- List Models Sold in All Regions
select 
	model 
from 
	bmw_car 
group by 
	model 
having count(distinct region) = (select count(distinct region) from bmw_car);


-- Top 5 Best-Selling Regions (by Total Sales Volume)
select 
	region, 
    sum(sales_volume) as total_sales_volume 
from 
	bmw_car
group by 
	region 
order by 
	total_sales_volume desc limit 5;
	

-- Count Diesel Cars Sold Each Year
select 
	year, 
    count(*) as count_Diesel_cars
from 
	bmw_car
where 
	fuel_type = "Diesel"
group by 
	year
order by
	year;


-- Most Popular Car Colors Across All Regions
select 
	color, 
    count(*) as cars_count 
from 
	bmw_car 
group by 
	color 
order by
	cars_count desc;


-- Average Price by Engine Size
select 
	engine_size, 
    round(avg(price_usd),2) as avg_price
from 
	bmw_car
group by 
	engine_size
order by 
	engine_size;


-- Max number of cars sold per year.
select 
	year, 
	sum(sales_volume) as no_car_sold_per_year 
from 
	bmw_car 
group by 
	year 
order by 
	no_car_sold_per_year desc;


-- Region wise which fuel type cars sold max, order by region ascending and total volume descending.
select 
	region,
	fuel_Type,
	sum(sales_volume) as total_sales_volume 
from 
	bmw_car 
group by 
	region, fuel_Type
order by 
	region asc, total_sales_volume desc;
