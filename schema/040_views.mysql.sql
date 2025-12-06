<<<<<<< HEAD
-- Auto-generated from schema-views-mysql.yaml (map@sha1:A4E10261DACB7519F6FEA44ED77A92163429CA5E)
=======
-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
>>>>>>> origin/main
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
