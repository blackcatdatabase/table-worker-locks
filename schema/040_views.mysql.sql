-- Auto-generated from schema-views-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  worker_locks

-- Contract view for [worker_locks]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_worker_locks AS
SELECT
  name,
  locked_until,
  created_at,
  updated_at
FROM worker_locks;
