psql

\c your_db_name_here

CREATE TABLE students (id SERIAL PRIMARY KEY, name VARCHAR(255), email VARCHAR(255));

CREATE TABLE users (id SERIAL PRIMARY KEY, user_name VARCHAR(255), user_email VARCHAR(255), password_salt VARCHAR(255), password_hash VARCHAR(255), is_admin BOOLEAN);
