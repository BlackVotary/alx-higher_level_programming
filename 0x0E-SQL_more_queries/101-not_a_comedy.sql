-- Script: List all shows without the genre Comedy from the hbtn_0d_tvshows database.

USE `hbtn_0d_tvshows`;

-- Get the show IDs with the genre Comedy
SET @comedy_show_ids := (SELECT GROUP_CONCAT(tv_show_id) FROM tv_show_genres JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id WHERE tv_genres.name = 'Comedy');

-- List all shows without the genre Comedy
SELECT title
FROM tv_shows
WHERE id NOT IN (@comedy_show_ids)
ORDER BY title ASC;

