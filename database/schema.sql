CREATE DATABASE easycalendar;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users (
  id UUID NOT NULL UNIQUE DEFAULT uuid_generate_v4(),
  name VARCHAR NOT NULL,
  email VARCHAR UNIQUE,
  password BYTEA NOT NULL
);

CREATE TABLE IF NOT EXISTS calendars (
  id UUID NOT NULL UNIQUE DEFAULT uuid_generate_v4(),
  free_slots VARCHAR[],
  appointments VARCHAR[],
  user_id UUID,
  FOREIGN KEY(user_id) REFERENCES users(id)
);