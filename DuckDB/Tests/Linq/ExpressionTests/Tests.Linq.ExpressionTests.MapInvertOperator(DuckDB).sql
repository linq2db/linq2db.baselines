-- DuckDB
DECLARE $addMask  -- Int32
SET     $addMask = 3
DECLARE $removeMask  -- Int32
SET     $removeMask = 12

UPDATE
	WarehouseTableDto
SET
	"Value" = WarehouseTableDto."Value" | $addMask & ~$removeMask

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	WarehouseTableDto t1
LIMIT 2

