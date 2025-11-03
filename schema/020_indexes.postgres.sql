-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  worker_locks
CREATE INDEX IF NOT EXISTS idx_worker_locks_until ON worker_locks (locked_until);
