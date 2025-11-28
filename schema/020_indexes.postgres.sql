-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  worker_locks

CREATE INDEX IF NOT EXISTS idx_worker_locks_until ON worker_locks (locked_until);
