# Definition – worker_locks

Distributed/DB-backed locks for background workers.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| name | VARCHAR(191) | NO | — | Lock name (primary key). |  |
| locked_until | DATETIME(6) | NO | — | Lease expiration time (UTC). |  |
