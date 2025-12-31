-- Auto-generated from schema-views-mysql.yaml (map@sha1:9417D8642843C7C690617409574FC6783895880D)
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
