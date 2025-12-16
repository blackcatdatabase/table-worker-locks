-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  worker_locks

CREATE TABLE IF NOT EXISTS worker_locks (
  name VARCHAR(191) NOT NULL PRIMARY KEY,
  locked_until TIMESTAMPTZ(6) NOT NULL,
  created_at TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
);
