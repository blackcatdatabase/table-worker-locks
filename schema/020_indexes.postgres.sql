-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  worker_locks
CREATE INDEX IF NOT EXISTS idx_worker_locks_until ON worker_locks (locked_until);
