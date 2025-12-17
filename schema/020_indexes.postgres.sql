-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  worker_locks

CREATE INDEX IF NOT EXISTS idx_worker_locks_until ON worker_locks (locked_until);
