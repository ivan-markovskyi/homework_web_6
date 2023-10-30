-- Таблиця груп
CREATE table IF NOT EXISTS groups (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

-- Таблиця студентів
CREATE table IF NOT EXISTS students (
  id SERIAL PRIMARY KEY,
  fullname VARCHAR(150) NOT NULL,
  group_id INTEGER REFERENCES groups(id)
  	on delete cascade
);

-- Таблиця викладачів

CREATE table IF NOT EXISTS teachers (
  id SERIAL PRIMARY KEY,
  fullname VARCHAR(150) NOT NULL
);

-- Таблиця предметів
CREATE table IF NOT EXISTS subjects (
  id SERIAL PRIMARY KEY,
  name VARCHAR(175) NOT NULL,
  teacher_id INTEGER  REFERENCES teachers(id)
  	on delete cascade
);

-- Таблиця оцінок
CREATE table IF NOT EXISTS grades (
  id SERIAL PRIMARY KEY,
  student_id INTEGER  REFERENCES students(id)
  on delete cascade,
  subject_id INTEGER  REFERENCES subjects(id)
  on delete cascade,
  grade INTEGER CHECK (grade >= 0 AND grade <= 100),
  grade_date DATE NOT NULL
);