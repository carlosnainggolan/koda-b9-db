SELECT title, concat(directors.first_name, ' ' , directors.last_name) AS "Director Name", genres.name AS "Genre"
FROM movies
JOIN directors ON movies.director_id = directors.id
JOIN genres ON genres.id = movies.genre_id
LIMIT 50;

SELECT concat(actors.first_name, ' ', actors.last_name) AS "Actor Name", movies.title AS "Movie Title"
FROM movies_actors
JOIN movies ON movies.id = movies_actors.movie_id
JOIN actors ON actors.id = movies_actors.actor_id;

