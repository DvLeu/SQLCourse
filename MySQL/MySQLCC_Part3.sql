 -- QUERYNG DATA FROM A TABLE 
SELECT continent_id, 
	   continent_name,
	   population
FROM continend;

-- WHERE

SELECT continent_id, 
	   continent_name,
	   population
FROM continend
WHERE continent_name = 'Asia';

SELECT population
FROM continent
WHERE continent_name = 'Asia';

-- TRY IT YOURSELF

USE feedback;

SELECT first_name,
last_name
FROM customer;

SELECT first_name,
last_name
FROM customer
WHERE first_name = 'Karen';

-- Wildcard 

USE land;

SELECT * 
FROM continent; 


-- ORDERING ROWS

SELECT continent_id,
continent_name, 
population
FROM continent
ORDER BY continent_name;

-- ORDERING VIA VALUES

SELECT continent_id,
continent_name, 
population
FROM continent
ORDER BY population DESC; -- CAN BE ASC 

-- NULL VALUES

SELECT * 
FROM unemployed;

-- SHOW NULL VALUES

SELECT * 
FROM unemployed
WHERE unemployed IS NULL;

-- DONT SHOW NULL VALUES


SELECT * 
FROM unemployed
WHERE unemployed IS NOT NULL;