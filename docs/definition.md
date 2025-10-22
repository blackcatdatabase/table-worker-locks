<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->
# Definition – worker_locks

Distributed/DB-backed locks for background workers.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| name | VARCHAR(191) | NO | — | Lock name (primary key). |  |
| locked_until | DATETIME(6) | NO | — | Lease expiration time (UTC). |  |