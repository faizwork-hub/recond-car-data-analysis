SELECT *
FROM recond_car_sales;

# How do car prices vary by seller type?
SELECT seller_type, ROUND(AVG(price), 2) AS average_prices
FROM recond_car_sales
GROUP BY seller_type
ORDER BY average_prices DESC;

# What is the price difference between cars of different colors?
SELECT colour, ROUND(AVG(price), 2) AS average_price_color
FROM recond_car_sales
GROUP BY colour
ORDER BY average_price_color DESC;

# How do the average prices of cars vary between seller types and warranty lengths (1 year, 5 years)?
SELECT seller_type, warranty, ROUND(AVG(price), 2) AS average_price
FROM recond_car_sales
GROUP BY seller_type, warranty
ORDER BY seller_type, warranty;

SELECT car_make , warranty, ROUND(AVG(price), 2) AS average_price
FROM recond_car_sales
GROUP BY car_make, warranty
ORDER BY warranty;

# What is the price distribution for different body types in Selangor and Kuala Lumpur?
SELECT body_type, ROUND(AVG(price), 2) AS average_price
FROM recond_car_sales
GROUP BY body_type
ORDER BY average_price DESC;

# How does the price and mileage of cars change over the years?
SELECT year_manufactured, ROUND(AVG(price), 2) AS average_price
FROM recond_car_sales
GROUP BY year_manufactured
ORDER BY year_manufactured DESC;

# Most best selling car make?
SELECT car_make, COUNT(car_make) AS total_count
FROM recond_car_sales
GROUP BY car_make
ORDER BY total_count DESC
LIMIT 5;

SELECT SUM(price) AS total_revenue
FROM recond_car_sales;

SELECT car_model, COUNT(car_model) AS car_model
FROM recond_car_sales
GROUP BY car_model
ORDER BY car_model DESC
LIMIT 5;






















