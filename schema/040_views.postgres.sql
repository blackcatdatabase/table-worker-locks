-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  worker_locks
-- Contract view for [worker_locks]
CREATE OR REPLACE VIEW vw_worker_locks AS
SELECT
  name,
  locked_until
FROM worker_locks;
