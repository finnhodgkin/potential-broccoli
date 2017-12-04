BEGIN;

DROP TABLE IF EXISTS superheroes cascade;

CREATE TABLE superheroes (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  superpower TEXT NOT NULL,
  weight INTEGER DEFAULT 100
);

INSERT INTO superheroes (name, superpower, weight) VALUES
  ('Wolverine', 'Regeneration', 300),
  ('Captain Marvel', 'Shoots concussive energy bursts from her hands', 165),
  ('Iron Man', 'None', 425);

COMMIT;
