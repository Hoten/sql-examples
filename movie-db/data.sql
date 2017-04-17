INSERT INTO movie
  (movie_name, rating, genre)
VALUES
  ('Batman', 98, 'Thriller/Action'),
  ('Superman', 97, 'Adventure/Action/Romance'),
  ('Princess Bride', 97, 'Comedy/Action');

INSERT INTO screen
  (occupancy, is_3d, size_of_screen, num_handicapped)
VALUES
  (100, false, 100.0, 10),
  (130, true, 125.0, 20),
  (150, true, 125.0, 20);


-- batman showtimes
INSERT INTO showtime
  (movie_id, screen_id, start_time, cost)
VALUES
  (1, 1, '2004-10-19 10:23:54', 10.0),
  (1, 2, '2004-10-19 12:23:54', 10.0),
  (1, 3, '2004-12-19 12:23:54', 10.0);

-- Princess Bride showtimes
INSERT INTO showtime
  (movie_id, screen_id, start_time, cost)
VALUES
  (3, 1, '2004-10-20 10:23:54', 10.0),
  (3, 2, '2004-10-20 12:23:54', 10.0),
  (3, 3, '2004-12-20 12:23:54', 10.0);

SELECT * FROM showtime;

SELECT * FROM showtime, movie;

SELECT * FROM movie, showtime WHERE movie.id = showtime.movie_id;
