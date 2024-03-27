-- Script: List all genres not linked to the show Dexter from the hbtn_0d_tvshows database.

USE `hbtn_0d_tvshows`;

-- Get the genre IDs linked to the show Dexter
SET @dexter_genre_ids := (SELECT GROUP_CONCAT(genre_id) FROM tv_show_genres JOIN tv_shows ON tv_shows.id = tv_show_genres.tv_show_id WHERE tv_shows.title = 'Dexter');

-- List all genres not linked to the show Dexter
SELECT name
FROM tv_genres
WHERE id NOT IN (@dexter_genre_ids)
ORDER BY name ASC;

