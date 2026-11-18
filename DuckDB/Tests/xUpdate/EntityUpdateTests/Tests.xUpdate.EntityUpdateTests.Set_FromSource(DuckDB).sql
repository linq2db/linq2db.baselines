-- DuckDB
DECLARE $Name NVarChar(5) -- String
SET     $Name = 'alice'
DECLARE $Version INTEGER -- Int32
SET     $Version = 1
DECLARE $UpdatedAt TIMESTAMP -- DateTime2
SET     $UpdatedAt = NULL
DECLARE $Id INTEGER -- Int32
SET     $Id = 1

UPDATE
	EntityUpdateTest
SET
	Name = $Name,
	"Version" = $Version,
	UpdatedAt = $UpdatedAt,
	UpdatedBy = $Name
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

