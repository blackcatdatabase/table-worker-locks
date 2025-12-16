-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  worker_locks

CREATE TABLE IF NOT EXISTS worker_locks (
  name VARCHAR(191) NOT NULL PRIMARY KEY,
  locked_until DATETIME(6) NOT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  INDEX idx_worker_locks_until (locked_until)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
