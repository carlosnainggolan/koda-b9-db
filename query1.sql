SELECT release_date, title
FROM movies
WHERE release_date BETWEEN '2019-12-31 23:59:59' and '2021-01-01 00:00:00';

SELECT first_name
FROM actors
WHERE lower(first_name) LIKE lower('%s');

SELECT rating, title
FROM movies
WHERE rating >= 4 AND rating <=8;