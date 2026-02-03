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
    
-- Sample Output:
-- fuel_type  avg_pric
-- Hybrid	   74797.55
-- Petrol	   74990.42
-- Diesel	   75079.81
-- Electric   75276.31    


-- Top 5 Most Expensive Cars in Each Sales Classification
select
    model, price_usd, sales_classification
from (select model, price_usd, sales_classification,
        row_number() over (partition by sales_classification order by price_usd desc
        ) AS row_classific
    from bmw_car) ranked_cars
where ranked_cars.row_classific <= 5;

-- Sample Output:
-- model   price_usd sales_classification
-- i8	     119997	  High
-- X1	     119996	  High
-- i8	     119992	  High
-- X1	     119988	  High
-- etc...


-- Total Sales Volume by Region and Year
with c1 as (select 
	region, year, sum(sales_volume) as total_sales_volume,
    row_number() over(partition by year order by sum(sales_volume) desc) as r_num
from 
	bmw_car 
group by 
	year,region
order by 
	year, total_sales_volume desc)
    select region,year,total_sales_volume from c1 where r_num=1;
    
-- Sample Output:
-- region        year  total_sales_volume
-- Asia	         2010	2907671
-- North America 2011	2945731
-- Middle East	 2012	3015084
-- etc...


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
    
-- Sample Output:
-- transmission | count_car_sold
-- Manual	      127362077
-- Automatic	  126013657


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
    
-- Sample Output:
-- transmission  avg_mileage
-- Automatic	 101092.8622
-- Manual	     99531.1641


-- List Models Sold in All Regions
select 
	model 
from 
	bmw_car 
group by 
	model 
having count(distinct region) = (select count(distinct region) from bmw_car);

-- Sample Output:
-- model
-- 3 Series
-- 5 Series
-- 7 Series
-- etc...


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
	
-- Sample Output:
-- region       | total_sales_volume
-- Asia	          42974277
-- Europe	      42555138
-- North America  42402629
-- etc...


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
    
-- Sample Output:
-- year | count_Diesel_cars
-- 2010	  829
-- 2011	  791
-- 2012	  791
-- 2013	  815
-- etc...


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

-- Sample Output:
-- color  | cars_count
-- Red		8463
-- Silver	8350
-- etc...


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
    
-- Sample Output:
-- engine_size | avg_price
-- 2	          74812.07
-- 2.1			  76116.76
-- 2.2			  74631.16
-- 2.3		      74028.73
-- etc...


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
    
-- Sample Output:
-- year  | no_car_sold_per_year
-- 2022		17920946
-- 2024		17527854
-- 2019		17191956
-- etc...


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
    
-- Sample Output:
-- region | fuel_type | total_sales_volume
-- Africa	Petrol		10538463
-- Africa	Hybrid		10486034
-- Africa	Electric	10329085
-- Africa	Diesel		10211670
-- etc...