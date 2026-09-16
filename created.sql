CREATE TABLE directors (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE genres (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(255)
);

DELETE FROM genres WHERE id>20;

CREATE TABLE movies (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  title VARCHAR(255),
  release_date TIMESTAMP,
  rating DECIMAL,
  director_id INT REFERENCES directors(id),
  genre_id INT REFERENCEs genres(id)
);

CREATE TABLE actors (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE movies_actors (
  movie_id INT REFERENCES movies(id),
  actor_id INT REFERENCES actors(id),
  role VARCHAR(255)
);

insert into directors (first_name, last_name) values ('Chantal', 'Gorioli');
insert into directors (first_name, last_name) values ('Kalina', 'Daal');
insert into directors (first_name, last_name) values ('Jesse', 'Havard');
insert into directors (first_name, last_name) values ('Viviyan', 'Eicke');
insert into directors (first_name, last_name) values ('Nichole', 'Arkley');
insert into directors (first_name, last_name) values ('Richmond', 'Tribe');
insert into directors (first_name, last_name) values ('Candi', 'Bruckent');
insert into directors (first_name, last_name) values ('Tiphani', 'Checkley');
insert into directors (first_name, last_name) values ('Babbette', 'Goodered');
insert into directors (first_name, last_name) values ('Stillmann', 'Curr');
insert into directors (first_name, last_name) values ('Dmitri', 'Methven');
insert into directors (first_name, last_name) values ('Rosette', 'Marfield');
insert into directors (first_name, last_name) values ('Gina', 'Pottes');
insert into directors (first_name, last_name) values ('Eben', 'Fermer');
insert into directors (first_name, last_name) values ('Farah', 'Vogele');
insert into directors (first_name, last_name) values ('Orren', 'Danev');
insert into directors (first_name, last_name) values ('Tarah', 'Franzettoini');
insert into directors (first_name, last_name) values ('Lodovico', 'Caudelier');
insert into directors (first_name, last_name) values ('Leora', 'Langfat');
insert into directors (first_name, last_name) values ('Garald', 'Silveston');

TABLE directors;

insert into genres (name) values ('Adventure|Comedy|Crime|Mystery');
insert into genres (name) values ('Comedy');
insert into genres (name) values ('Drama');
insert into genres (name) values ('Action|Crime|Thriller');
insert into genres (name) values ('Drama|War');
insert into genres (name) values ('Action|Thriller');
insert into genres (name) values ('Comedy');
insert into genres (name) values ('Action|Western');
insert into genres (name) values ('Animation|Musical');
insert into genres (name) values ('Drama|Romance');
insert into genres (name) values ('Adventure|Animation|Children|Drama|Sci-Fi');
insert into genres (name) values ('Drama|Fantasy|Mystery|Romance');
insert into genres (name) values ('Drama');
insert into genres (name) values ('Comedy|Horror');
insert into genres (name) values ('Documentary');
insert into genres (name) values ('Action|Adventure|Drama|Romance|Western');
insert into genres (name) values ('Action|Sci-Fi');
insert into genres (name) values ('Comedy|Horror');
insert into genres (name) values ('Crime');
insert into genres (name) values ('Comedy');

TABLE genres;

insert into movies (title, release_date, rating, director_id, genre_id) values ('Last Run', '2017-01-27 02:50:17', 4.0, 10, 15);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Traviata, La', '2016-10-12 12:55:37', 4.3, 3, 18);
insert into movies (title, release_date, rating, director_id, genre_id) values ('The Woman in Black 2: Angel of Death', '2002-02-16 13:08:40', 3.8, 8, 4);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Cousins, The (Cousins, Les)', '2021-08-31 19:36:23', 9.7, 6, 19);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Goodbye Lover', '2021-03-12 11:01:12', 5.9, 19, 19);
insert into movies (title, release_date, rating, director_id, genre_id) values ('For the Love of Movies', '2005-12-02 01:36:18', 7.6, 17, 3);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Page Eight', '2023-09-07 19:20:38', 5.4, 13, 15);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Chantilly Lace', '2019-05-13 06:45:49', 8.0, 6, 7);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Time (Shi gan)', '2017-04-10 06:12:38', 10.0, 14, 4);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Into Eternity', '2017-04-06 07:12:05', 9.5, 5, 14);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Enemy at the Gates', '2013-05-03 02:33:54', 7.3, 19, 20);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Valhalla Rising', '2010-06-27 03:11:07', 3.9, 20, 6);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Air Force One', '2003-08-05 02:45:29', 9.1, 20, 11);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Ballistic: Ecks vs. Sever', '2007-08-06 06:48:07', 7.6, 13, 11);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Belarmino', '2008-10-05 07:09:36', 4.9, 17, 13);
insert into movies (title, release_date, rating, director_id, genre_id) values ('I Am Curious (Yellow) (Jag är nyfiken - en film i gult)', '2008-01-03 13:53:11', 8.3, 7, 17);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Accused, The', '2017-10-24 19:45:23', 7.5, 1, 10);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', '2015-03-21 08:52:19', 4.7, 5, 10);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Hawk Is Dying, The', '2013-11-14 20:09:02', 7.8, 4, 8);
insert into movies (title, release_date, rating, director_id, genre_id) values ('Even Dwarfs Started Small (Auch Zwerge haben klein angefangen)', '2016-12-10 14:15:05', 8.5, 13, 5);

TABLE movies;

insert into actors (first_name, last_name) values ('Hernando', 'Phripp');
insert into actors (first_name, last_name) values ('Salomon', 'Zorn');
insert into actors (first_name, last_name) values ('Stu', 'Glasser');
insert into actors (first_name, last_name) values ('Brittani', 'Ketchen');
insert into actors (first_name, last_name) values ('Em', 'Helmke');
insert into actors (first_name, last_name) values ('Derek', 'Eburah');
insert into actors (first_name, last_name) values ('Mariele', 'Revance');
insert into actors (first_name, last_name) values ('Warden', 'Tellwright');
insert into actors (first_name, last_name) values ('Con', 'Gocher');
insert into actors (first_name, last_name) values ('Renaud', 'Lesslie');
insert into actors (first_name, last_name) values ('Siouxie', 'Drowsfield');
insert into actors (first_name, last_name) values ('Washington', 'Trustey');
insert into actors (first_name, last_name) values ('Frasier', 'Questier');
insert into actors (first_name, last_name) values ('Maurizia', 'Castagneto');
insert into actors (first_name, last_name) values ('Gill', 'Ianinotti');
insert into actors (first_name, last_name) values ('Ivie', 'Trewman');
insert into actors (first_name, last_name) values ('Olag', 'Kuzemka');
insert into actors (first_name, last_name) values ('Caryn', 'Yacobsohn');
insert into actors (first_name, last_name) values ('Adela', 'Plumridege');
insert into actors (first_name, last_name) values ('Hardy', 'Dunn');
insert into actors (first_name, last_name) values ('Hardys', 'Dunn');

TABLE actors;

insert into movies_actors (movie_id, actor_id, role) values (10, 3, 'cinematographer');
insert into movies_actors (movie_id, actor_id, role) values (20, 18, 'grip');
insert into movies_actors (movie_id, actor_id, role) values (14, 14, 'editor');
insert into movies_actors (movie_id, actor_id, role) values (20, 7, 'producer');
insert into movies_actors (movie_id, actor_id, role) values (12, 18, 'production assistant');
insert into movies_actors (movie_id, actor_id, role) values (13, 16, 'director');
insert into movies_actors (movie_id, actor_id, role) values (13, 19, 'sound designer');
insert into movies_actors (movie_id, actor_id, role) values (13, 4, 'director');
insert into movies_actors (movie_id, actor_id, role) values (7, 6, 'editor');
insert into movies_actors (movie_id, actor_id, role) values (12, 11, 'cinematographer');
insert into movies_actors (movie_id, actor_id, role) values (16, 4, 'grip');
insert into movies_actors (movie_id, actor_id, role) values (8, 20, 'producer');
insert into movies_actors (movie_id, actor_id, role) values (20, 17, 'production assistant');
insert into movies_actors (movie_id, actor_id, role) values (1, 7, 'producer');
insert into movies_actors (movie_id, actor_id, role) values (4, 7, 'grip');
insert into movies_actors (movie_id, actor_id, role) values (12, 9, 'sound designer');
insert into movies_actors (movie_id, actor_id, role) values (18, 15, 'sound designer');
insert into movies_actors (movie_id, actor_id, role) values (15, 10, 'director');
insert into movies_actors (movie_id, actor_id, role) values (4, 17, 'production assistant');
insert into movies_actors (movie_id, actor_id, role) values (3, 16, 'costume designer');