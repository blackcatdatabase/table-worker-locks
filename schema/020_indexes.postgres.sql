-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-10-24T09:46:38Z)
-- engine: postgres
-- table:  worker_locks
CREATE INDEX idx_worker_locks_until ON worker_locks (locked_until);
