DROP TABLE castings;
DROP TABLE movies;
DROP TABLE stars;

CREATE TABLE movies (
  id SERIAL4 PRIMARY KEY,
  title TEXT,
  genre TEXT
);

CREATE TABLE stars (
id SERIAL4 PRIMARY KEY,
first_name TEXT,
last_name TEXT
);

CREATE TABLE castings (
  id SERIAL4 PRIMARY KEY,
  movie_id INT4 REFERENCES movies(id) ON DELETE CASCADE,
  star_id INT4 REFERENCES stars(id) ON DELETE CASCADE,
  fee INT4
);
