<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\WorkerLocks;

use BlackCat\Database\Support\Criteria as BaseCriteria;
use BlackCat\Core\Database;

/**
 * Per-repo Criteria - thin layer on top of the central BlackCat\Database\Support\Criteria.
 *
 * Tokens filled by the generator:
 *  - FILTERABLE_COLUMNS_ARRAY   e.g., ["id","tenant_id","status","created_at"]
 *  - SEARCHABLE_COLUMNS_ARRAY   e.g., ["order_no","customer_email"]
 *  - DEFAULT_PER_PAGE           e.g., 50
 *  - MAX_PER_PAGE               e.g., 500
 *
 * All the "hard" logic (dialect, LIKE/ILIKE, NULLS LAST, tenancy, seek, join params,
 * andWhere()/bind() compatibility, etc.) lives in BaseCriteria. Here we only declare whitelists
 * and per-repo limits plus an optional fromDb() factory.
 */
final class Criteria extends BaseCriteria
{
    /** Hard clamp perPage to [1..maxPerPage] for this repo. */
<<<<<<< HEAD
    public function perPage(): int
=======
    protected function perPage(): int
>>>>>>> origin/main
    {
        $pp = (int) parent::perPage();
        $pp = max(1, $pp);
        return min($pp, $this->maxPerPage());
    }

    /** Columns that are safe to use inside WHERE filters. */
    protected function filterable(): array
    {
<<<<<<< HEAD
        return [ 'name', 'locked_until', 'created_at', 'updated_at' ];
=======
        return [ 'name', 'locked_until' ];
>>>>>>> origin/main
    }

    /** Columns used for full-text LIKE/ILIKE searches. */
    protected function searchable(): array
    {
        return [ 'name' ];
    }

<<<<<<< HEAD
/** Columns allowed in ORDER BY (falls back to filterable() when empty). */
protected function sortable(): array
{
    return [ 'name', 'locked_until', 'created_at', 'updated_at' ];
}
=======
    /** Columns allowed in ORDER BY (falls back to filterable() when empty). */
    protected function sortable(): array
    {
        $x = [ 'name', 'locked_until' ];
        return $x ?: $this->filterable();
    }
>>>>>>> origin/main

    /**
     * Whitelist of joinable entities (for safe ->join() usage):
     * e.g., [ 'orders' => 'j0', 'users' => 'j1' ]
     */
    protected function joinable(): array
    {
        /** @var array<string,string> */
        return [];
    }

    /** Default page size for this repository. */
    protected function defaultPerPage(): int
    {
        return 50;
    }

    /** Maximum allowed page size. */
    protected function maxPerPage(): int
    {
        return 500;
    }

    /**
     * QoL factory: detect dialect based on the PDO driver and optionally apply a tenancy filter.
     *
     * Example:
     *   $crit = Criteria::fromDb($db, tenantId: 42)
     *                   ->search("foo")
     *                   ->orderBy("created_at","DESC");
     */
    public static function fromDb(
        Database $db,
        int|string|array|null $tenantId = null,
        string $tenantColumn = "tenant_id",
        bool $quoteIdentifiers = false
    ): static {
        $c = new static(); // previously: new self()

        $c->setDialectFromDatabase($db);
<<<<<<< HEAD
        if ($quoteIdentifiers) { $c->enableIdentifierQuoting(true); }
        if ($tenantId !== null && $tenantColumn !== '') { $c->tenant($tenantId, $tenantColumn); }
=======
        if ($quoteIdentifiers) { $c->quoteIdentifiers(true); }
        if ($tenantId !== null) { $c->tenant($tenantId, $tenantColumn); }
>>>>>>> origin/main

        if (\method_exists(\BlackCat\Database\Packages\WorkerLocks\Definitions::class, 'softDeleteColumn')) {
            $soft = \BlackCat\Database\Packages\WorkerLocks\Definitions::softDeleteColumn();
            if ($soft) { $c->softDelete($soft); }
        }
        return $c;
    }

    // --- Generated criteria helpers (per table) ---
    
<<<<<<< HEAD
    public function byId(int|string $id): static {
        return $this->where('name', '=', $id);
    }
    public function byIds(array $ids): static {
        if (!$ids) return $this->whereRaw('1=0');
        return $this->where('name', 'IN', array_values($ids));
    }
    public function createdBetween(?\DateTimeInterface $from, ?\DateTimeInterface $to): static {
        return $this->between('created_at', $from, $to);
    }
    public function updatedSince(\DateTimeInterface $ts): static {
        return $this->where('updated_at', '>=', $ts);
    }

}
=======
    public function byId(int|string $id): self {
        return $this->where('t.name = :cid', ['cid' => $id]);
    }
    public function byIds(array $ids): self {
        if (!$ids) return $this->where('1=0');
        return $this->whereIn('t.name', array_values($ids));
    }

}
>>>>>>> origin/main
