# worker_locks

Distributed/DB-backed locks for background workers.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| locked_until | TIMESTAMPTZ(6) | NO |  | Lease expiration time (UTC). |
| name | VARCHAR(191) | NO |  | Lock name (primary key). |

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
| vw_worker_locks | mysql | algorithm=MERGE, security=INVOKER | [packages\worker-locks\schema\040_views.mysql.sql](https://github.com/blackcatacademy/blackcat-database/packages/worker-locks/schema/040_views.mysql.sql) |
| vw_worker_locks | postgres |  | [packages\worker-locks\schema\040_views.postgres.sql](https://github.com/blackcatacademy/blackcat-database/packages/worker-locks/schema/040_views.postgres.sql) |
