-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  worker_locks
-- Contract view for [worker_locks]
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_worker_locks AS
SELECT
  name,
  locked_until
FROM worker_locks;
