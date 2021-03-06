DELETE FROM user_roles;
DELETE FROM meals;
DELETE FROM users;
ALTER SEQUENCE global_seq RESTART WITH 100000;

-- admin
INSERT INTO users (name, email, password, calories_per_day)
VALUES ('User', 'user@yandex.ru', '$2a$10$Sh0ZD2NFrzRRJJEKEWn8l.92ROEuzlVyzB9SV1AM8fdluPR0aC1ni', 2005);

-- password
INSERT INTO users (name, email, password, calories_per_day)
VALUES ('Admin', 'admin@gmail.com', '$2a$10$WejOLxVuXRpOgr4IlzQJ.eT4UcukNqHlAiOVZj1P/nmc8WbpMkiju', 1900);

INSERT INTO user_roles (role, user_id) VALUES
  ('ROLE_USER', 100000),
  ('ROLE_ADMIN', 100001),
  ('ROLE_USER', 100001);

INSERT INTO meals (date_time, description, calories, user_id) VALUES
  ('2015-05-30 10:00:00', 'Breakfast', 500, 100000),
  ('2015-05-30 13:00:00', 'Lunch', 1000, 100000),
  ('2015-05-30 20:00:00', 'Dinner', 500, 100000),
  ('2015-05-31 10:00:00', 'Breakfast', 500, 100000),
  ('2015-05-31 13:00:00', 'Lunch', 1000, 100000),
  ('2015-05-31 20:00:00', 'Dinner', 510, 100000),
  ('2015-06-01 14:00:00', 'Admin lunch', 510, 100001),
  ('2015-06-01 21:00:00', 'Admin dinner', 1500, 100001);
