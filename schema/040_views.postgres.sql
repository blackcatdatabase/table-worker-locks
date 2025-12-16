-- Auto-generated from schema-views-postgres.yaml (map@sha1:A35B3CB52780A1043442511D947A51BA2C27622C)
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
