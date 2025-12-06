<<<<<<< HEAD
-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
=======
-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
>>>>>>> origin/main
-- engine: postgres
-- table:  worker_locks

CREATE INDEX IF NOT EXISTS idx_worker_locks_until ON worker_locks (locked_until);
