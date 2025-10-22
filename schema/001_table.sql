-- Auto-generated from schema-map.psd1 (map@6cefe8e)
-- table: worker_locks
CREATE TABLE IF NOT EXISTS worker_locks (
  name VARCHAR(191) NOT NULL PRIMARY KEY,
  locked_until DATETIME(6) NOT NULL,
  INDEX idx_worker_locks_until (locked_until)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
