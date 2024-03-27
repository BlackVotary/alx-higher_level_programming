-- Script: List all cities of California from the database hbtn_0d_usa without using JOIN.

USE `hbtn_0d_usa`;

-- Get the state_id of California
SET @state_id = (SELECT id FROM states WHERE name = 'California');

-- List all cities of California
SELECT * FROM cities
WHERE state_id = @state_id
ORDER BY id ASC;

