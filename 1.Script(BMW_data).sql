-- Create a database:
create database BMW_db;

-- Use database:
use BMW_db;

-- Create a table "BMW_Car" that matches columns to dataset:
create table BMW_Car(
	Model varchar(20),
    Year int,
    Region varchar(50),
    Color varchar(20),
    Fuel_Type varchar(15),
    Transmission varchar(20),
    Engine_Size float,
    Mileage_KM int,
    Price_USD int,
    Sales_Volume int,
    Sales_Classification varchar(10));


-- Data imported successfully!

select * from bmw_car;

-- Nulls per column
select 
	sum(model is null) as model_nulls,
    sum(year is null) as year_nulls,
    sum(region is null) as region_nulls,
    sum(color is null) as color_nulls,
    sum(fuel_type is null) as fuel_type_nulls,
    sum(transmission is null) as transmission_nulls,
    sum(engine_size is null) as engine_size_nulls,
    sum(mileage_km is null) as mileage_km_nulls,
    sum(price_usd is null) as price_usd_nulls,
    sum(sales_volume is null) as sales_volume_nulls,
    sum(sales_classification is null) as sales_classification_nulls	
from 
	bmw_car;
