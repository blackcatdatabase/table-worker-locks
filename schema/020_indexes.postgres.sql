-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  worker_locks

CREATE INDEX IF NOT EXISTS idx_worker_locks_until ON worker_locks (locked_until);
