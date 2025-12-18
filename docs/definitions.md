# worker_locks

Distributed/DB-backed locks for background workers.

## Columns
| Column | Type | Null | Default | Description | Crypto |
| --- | --- | --- | --- | --- | --- |
| name | VARCHAR(191) | NO |  | Lock name (primary key). |  |
| locked_until | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO |  | Lease expiration time (UTC). |  |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| updated_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |  |

## Engine Details

### mysql

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_worker_locks_until | locked_until | INDEX idx_worker_locks_until (locked_until) |

### postgres

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_worker_locks_until | locked_until | CREATE INDEX IF NOT EXISTS idx_worker_locks_until ON worker_locks (locked_until) |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_worker_locks | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_worker_locks | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
