-- Chapter 5 Joins 

USE SUBWAY;
SELECT * FROM subway_system;
SELECT * FROM country;

-- Example 1

SELECT subway_system.subway_system,
	subway_system.city,
    country.country
FROM subway_system
INNER JOIN country
on subway_system.country_code = country.country_code;

-- ALIASES

SELECT s.subway_system, 
	s.city, 
    c.country
FROM subway_system s
INNER JOIN country c
on s.country_code = c.country_code;

-- ALIASES using as to define an aliase

SELECT s.subway_system, 
	s.city, 
    c.country
FROM subway_system AS s
INNER JOIN country AS c
on s.country_code = c.country_code;

-- Inner joins 

SELECT s.subway_system,
s.city,
c.country
FROM subway_system s
JOIN country c
ON s.country_code = c.country_code;


-- OUTER JOINS 
-- RIGHT
SELECT c.country, 
s.city, 
s.subway_system
FROM subway_system s RIGHT OUTER JOIN country c
ON s.country_code = c.country_code;
-- LEFT
SELECT c.country, 
s.city, 
s.subway_system
FROM country c LEFT OUTER JOIN subway_system s
ON s.country_code = c.country_code;

-- NATURAL JOINS
SELECT * 
FROM subway_system s
NATURAL JOIN country c;

-- CHECKPOINT
SHOW DATABASES;

-- RESTAURANT DATABASE 

USE restaurant;

-- CROSS JOINS

SELECT m.main_item, 
s.side_item
FROM main_dish m
CROSS JOIN side_dish s;


-- MUSIC CLUB 
SELECT a.music_fan,
b.music_fan
FROM music_preference as a
INNER JOIN music_preference as b
ON (a.favorite_genre = b.favorite_genre) 
WHERE a.music_fan != b.music_fan
ORDER BY a.music_fan;


-- VARIATIONS IN JOINS 

-- PARENTHESIS
-- WITH 
SELECT s.subway_system, 
s.city, 
c.country
FROM subway_system as s 
INNER JOIN country as c
ON s.country_code = c.country_code;

-- WITHOUT
SELECT s.subway_system, 
s.city, 
c.country
FROM subway_system as s
INNER JOIN country as c 
ON (s.country_code = c.country_code);


-- Old-School Inner Joins

SELECT  s.subway_system,
        s.city,
        c.country
FROM    subway_system AS s,
        country AS c
WHERE   s.country_code = c.country_code;

-- Column Aliasing

SELECT  s.subway_system AS metro,
        s.city,
        c.country
FROM    subway_system AS s
INNER JOIN country AS c
ON      s.country_code = c.country_code
WHERE   c.country_code = 'FR';


-- OTHER DATABASE
-- RESTAURANT DB 
SELECT * FROM restaurant.main_dish;
-- SUBWAY DB
SELECT * FROM subway.subway_system;


SELECT  s.subway_system,
        s.city,
        c.country
FROM    subway.subway_system AS s
INNER JOIN location.country AS c
ON      s.country_code = c.country_code;

-- TRY IT YOURSELF 

USE solar_system;
SHOW TABLES;
DESCRIBE planet;
DESCRIBE ring;

-- EX01
SELECT p.planet_name,
r.ring_tot
FROM solar_system.planet AS p
INNER JOIN solar_system.ring AS r
ON p.planet_id = r.planet_id;
-- EX02
SELECT p.planet_name,
r.ring_tot
FROM solar_system.planet AS p LEFT OUTER JOIN solar_system.ring AS r
ON p.planet_id = r.planet_id;

-- EX03
SELECT p.planet_name,
r.ring_tot
FROM solar_system.ring as r RIGHT OUTER JOIN solar_system.planet as p
ON p.planet_id = r.planet_id;

-- EX04
SELECT p.planet_name,
r.ring_tot AS rings
FROM solar_system.planet AS p
INNER JOIN solar_system.ring AS r
ON p.planet_id = r.planet_id;