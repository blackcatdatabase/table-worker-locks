<?php
declare(strict_types=1);

namespace BlackCat\Database\Packages\WorkerLocks\Dto;

/**
 * Jednoduché, neměnné DTO s veřejnými readonly vlastnostmi.
 * - Žádná logika; pouze nosič dat.
 * - Silné typy drží kontrakt napříč vrstvami.
 */
final class WorkerLockDto {
    public function __construct(
        public readonly string $name,
        public readonly \DateTimeImmutable $lockedUntil
    ) {}

    /** Vhodné pro serializaci/logování (bez binárních/velkých blobů). */
    public function toArray(): array {
        // get_object_vars funguje dobře s public readonly vlastnostmi
        return get_object_vars($this);
    }
}
