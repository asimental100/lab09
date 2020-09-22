DROP TABLE IF EXISTS recipes, logs;

CREATE TABLE recipes (
  id BIGINT UNIQUE  GENERATED ALWAYS AS IDENTITY,
  name TEXT NOT NULL,
  directions TEXT[]
);

CREATE TABLE logs (
  id BIGINT PRIMARY KEY,
  recipe_id BIGINT REFERENCES recipes(id),
  date_of_event DATE,
  notes TEXT NOT NULL,
  rating BIGINT NOT NULL
);
