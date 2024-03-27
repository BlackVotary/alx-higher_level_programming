-- Script: List all genres in the database hbtn_0d_tvshows_rate by their rating sum.

USE `hbtn_0d_tvshows_rate`;

-- List all genres by their rating sum
SELECT tv_genres.name, SUM(tv_show_genres_ratings.rating) AS rating_sum
FROM tv_genres
JOIN tv_show_genres ON tv_genres.id = tv_show_genres.genre_id
JOIN tv_shows ON tv_shows.id = tv_show_genres.tv_show_id
JOIN tv_show_genres_ratings ON tv_show_genres_ratings.tv_show_id = tv_shows.id
GROUP BY tv_genres.id
ORDER BY rating_sum DESC;

