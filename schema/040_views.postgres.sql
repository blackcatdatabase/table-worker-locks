<<<<<<< HEAD
-- Auto-generated from schema-views-postgres.yaml (map@sha1:EDC13878AE5F346E7EAD2CF0A484FEB7E68F6CDD)
=======
-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
>>>>>>> origin/main
-- engine: postgres
-- table:  worker_locks

-- Contract view for [worker_locks]
CREATE OR REPLACE VIEW vw_worker_locks AS
SELECT
  name,
  locked_until,
  created_at,
  updated_at
FROM worker_locks;
