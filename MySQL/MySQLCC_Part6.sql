use police;
-- multiple JOINS 
SELECT c.crime_name, 
l.location_name,
s.suspect_name
FROM crime c 
JOIN location l 
ON c.location_id = l.location_id
LEFT JOIN suspect s
ON c.suspect_id = s.suspect_id;

-- Multiple Joins with where 

SELECT c.crime_name, 
l.location_name, 
s.suspect_name
FROM crime c 
JOIN location l
ON c.location_id = l.location_id
LEFT JOIN suspect s 
ON c.suspect_id = s.suspect_id
WHERE s.suspect_name IS NULL;


-- WINE DB 
use wine;
SHOW TABLES;
SELECT c.country_name, 
r.region_name, 
v.viticultural_area_name, 
w.winery_name
FROM country c
JOIN region r 
ON c.country_id = r.country_id
AND c.country_name = 'USA'
JOIN viticultural_area v 
ON r.region_id = v.region_id
JOIN winery w 
ON v.viticultural_area_id = w.viticultural_area_id
AND w.offering_tours_flag IS TRUE
JOIN portfolio p 
ON w.winery_id = p.winery_id
AND p.in_season_flag IS TRUE 
JOIN wine_type t 
ON p.wine_type_id = t.wine_type_id
AND t.wine_type_name = 'Merlot';