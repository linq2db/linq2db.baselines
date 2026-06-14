-- DuckDB
DECLARE $Name NVarChar(1) -- String
SET     $Name = 'x'
DECLARE $Version  -- Int32
SET     $Version = 5
DECLARE $stamp  -- DateTime2
SET     $stamp = '2026-06-01 00:00:00.000000'::TIMESTAMP
DECLARE $UpdatedBy NVarChar -- String
SET     $UpdatedBy = NULL
DECLARE $Id  -- Int32
SET     $Id = 1

UPDATE
	EntityUpdateTest
SET
	Name = $Name,
	"Version" = $Version,
	UpdatedAt = $stamp,
	UpdatedBy = $UpdatedBy
WHERE
	EntityUpdateTest.Id = $Id

-- DuckDB

SELECT
	t1.Id,
	t1.Name,
	t1."Version",
	t1.UpdatedAt,
	t1.UpdatedBy
FROM
	EntityUpdateTest t1
LIMIT 2

