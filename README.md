# BMW Car Pricing & Sales Analysis (MySQL)

## Project Overview
This SQL project analyzes BMW car pricing, mileage, and sales performance across different **regions, fuel types, and years**.  
The goal is to uncover **pricing trends**, **regional demand patterns**, and **performance insights** using structured SQL analysis.

## Objectives
This project demonstrates proficiency in:
- Database design and schema creation  
- Data cleaning and standardization using SQL  
- Exploratory data analysis (EDA) through queries and views  
- Applying aggregate, window, and conditional functions  
- Presenting business insights from raw automotive data  

## Dataset Information
**Dataset name:** `BMW_car.csv`

| Column Name | Description |
|--------------|-------------|
| Model | Car model name (e.g., X5, 320d, i8) |
| Year | Manufacturing year (e.g., 2016, 2013, 2022)|
| Region | Region where the car was sold (e.g., Asia, North America, Middle East)|
| Color | Car color (e.g., Red, Blue, Black)|
| Fuel_Type | Type of fuel (e.g., Petrol, Diesel, Hybrid, Electric) |
| Transmission | Transmission type (e.g., Manual, Automatic) |
| Engine_Size | Engine size in liters (e.g., 3.5, 1.6, 4.5)|
| Mileage_KM | Total distance driven (in km) |
| Price_USD | Selling price in USD |
| Sales_Volume | Units sold |
| Sales_Classification | Category (Low and High) |

## How to Run the Project

- 1.Create Database
- 2.Import Dataset
- 3.Clean and Standardize Data
- 4.Add Constraints and Indexes
- 5.Create Views
- 6.Run Analysis Queries

## Skills and Tools Used

- **SQL (MySQL)** — Querying, data cleaning, aggregation, window functions
- **MySQL Workbench** — Query execution and schema visualization
- **Data Analysis Concepts** — Data validation, trend analysis, segmentation

## Key SQL Concepts Applied
- SELECT, WHERE, GROUP BY, HAVING  
- Aggregate functions (AVG, SUM, COUNT, etc.)  
- Window functions (`ROW_NUMBER`, `OVER`)  
- Conditional logic with CASE  
- Data cleaning using TRIM, LOWER, DELETE, and UPDATE

## Learning Outcomes

Through this project, I learned:
- How to structure a SQL project professionally for GitHub
- How to perform EDA using pure SQL
- Creating and organizing reusable SQL scripts and views
- Writing efficient queries using indexing and constraints
- Presenting technical SQL analysis clearly for non-technical readers

## Future Improvements

- Add stored procedures for dynamic analysis
- Extend to other car brands for comparative analysis
- Connect this data to a dashboard (Power BI, Tableau) using views
- Add automated testing for data validity and constraints
- Include correlation and regression-type analysis (price vs mileage, engine size, etc.)
