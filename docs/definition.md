<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – worker_locks

Distributed/DB-backed locks for background workers.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| name | VARCHAR(191) | NO | — | Lock name (primary key). |  |
| locked_until | TIMESTAMPTZ(6) | NO | — | Lease expiration time (UTC). |  |