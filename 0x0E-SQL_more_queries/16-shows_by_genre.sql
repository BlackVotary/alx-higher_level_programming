-- Script: List all shows and their linked genres from the hbtn_0d_tvshows database.

USE `hbtn_0d_tvshows`;

-- List all shows and their linked genres
SELECT tv_shows.title, tv_genres.name AS genre
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
LEFT JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
ORDER BY tv_shows.title ASC, tv_genres.name ASC;
