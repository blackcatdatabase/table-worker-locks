-- Auto-generated from schema-map-postgres.psd1 (map@db2f8b8)
-- engine: postgres
-- table:  worker_locks
CREATE TABLE IF NOT EXISTS worker_locks (
  name VARCHAR(191) NOT NULL PRIMARY KEY,
  locked_until TIMESTAMPTZ(6) NOT NULL
);
