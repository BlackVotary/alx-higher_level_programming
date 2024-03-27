-- Script: Create table 'id_not_null' in the specified MySQL database.

USE `your_database_name`;

-- Create table id_not_null if it does not exist
CREATE TABLE IF NOT EXISTS id_not_null (
    id INT DEFAULT 1,
    name VARCHAR(256)
);

