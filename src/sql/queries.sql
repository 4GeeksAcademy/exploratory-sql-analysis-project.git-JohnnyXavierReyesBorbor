-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM observations;
-- MISSION 1: 
SELECT * 
FROM observations 
LIMIT 10;

SELECT DISTINCT region_id 
FROM observations;

SELECT COUNT (DISTINCT species_id) 
FROM observations;

SELECT *
FROM observations 
WHERE region_id=2;

SELECT * 
FROM observations 
WHERE observation_date="1998-08-08";

SELECT region_id, COUNT (*) AS total 
FROM observations 
GROUP BY region_id 
ORDER BY total DESC 
LIMIT 1;

SELECT species_id, COUNT (*) AS total 
FROM observations 
GROUP BY species_id 
ORDER BY total 
DESC LIMIT 1;

SELECT species_id, COUNT (*) AS total 
FROM observations 
GROUP BY species_id 
HAVING total<5 
ORDER BY total DESC ;

SELECT observer, COUNT (*) AS total 
FROM observations 
GROUP BY observer 
ORDER BY total DESC ;

SELECT observations.id, regions.name 
FROM observations
JOIN regions
    ON observations.region_id = regions.id;

SELECT observations.id, species.scientific_name
FROM observations
JOIN species
    ON observations.species_id=species.id;

SELECT observations.id, regions.name, COUNT (*) AS total
FROM observations
JOIN regions
    ON observations.region_id = regions.id
GROUP BY regions.name
ORDER BY total DESC;

INSERT INTO observations
(species_id, region_id, observer, observation_date, count)
VALUES(4,2,"obsr797550","1981-10-21",-16.345678,145.12345,0);



-- MISSION 4
-- Your query here;


-- MISSION 5
-- Your query here;


-- MISSION 6
-- Your query here;


-- MISSION 7
-- Your query here;


-- MISSION 8
-- Your query here;
