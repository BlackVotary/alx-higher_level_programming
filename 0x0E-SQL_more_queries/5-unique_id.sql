-- Script: Create table 'unique_id' in the specified MySQL database.

USE `your_database_name`;

-- Create table unique_id if it does not exist
CREATE TABLE IF NOT EXISTS unique_id (
    id INT DEFAULT 1 UNIQUE,
    name VARCHAR(256)
);
