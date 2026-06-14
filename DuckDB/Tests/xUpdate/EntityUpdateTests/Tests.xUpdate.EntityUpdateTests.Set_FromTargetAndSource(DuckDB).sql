-- DuckDB
DECLARE $Name NVarChar(1) -- String
SET     $Name = 'n'
DECLARE $Version  -- Int32
SET     $Version = 3
DECLARE $UpdatedAt  -- DateTime2
SET     $UpdatedAt = NULL
DECLARE $UpdatedBy NVarChar -- String
SET     $UpdatedBy = NULL
DECLARE $Id  -- Int32
SET     $Id = 1

UPDATE
	EntityUpdateTest
SET
	Name = $Name,
	"Version" = EntityUpdateTest."Version" + $Version,
	UpdatedAt = $UpdatedAt,
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

