-- 1) create a movie_theatre_db (in psql)
--        CREATE DATABASE movie_theatre_db;
--        \q (quits)
-- 2) in terminal: psql -d movie_theatre_db -f code.sql
-- 3) connect to db: psql -d movie_theatre_db
-- 4) \d+ movie


-- movie

  -- id
  -- movie_name
  -- rating
  -- genre

CREATE TABLE movie (
    id SERIAL PRIMARY KEY,
    movie_name TEXT,
    rating INTEGER,
    genre TEXT
);

-- food

  -- id
  -- name
  -- price
  -- quantity
  -- gives_food_poisoning

CREATE TABLE food (
  id SERIAL PRIMARY KEY,
  name TEXT,
  price NUMERIC,
  quantity INTEGER,
  gives_food_poisoning BOOLEAN
);

-- (movie-showtime relationship: 1 to many. 1 movie to many showtimes)
-- showtime

  -- id
  -- movie_id
  -- screen_id
  -- start_time
  -- cost

CREATE TABLE showtime (
  id SERIAL PRIMARY KEY,
  movie_id INTEGER,
  screen_id INTEGER,
  start_time TIMESTAMP,
  cost NUMERIC
);

-- screen (a room)

  -- id
  -- occupancy
  -- is_3d
  -- size_of_screen
  -- num_handicapped

CREATE TABLE screen (
  id SERIAL PRIMARY KEY,
  occupancy INTEGER,
  is_3d BOOLEAN,
  size_of_screen NUMERIC,
  num_handicapped INTEGER
);
