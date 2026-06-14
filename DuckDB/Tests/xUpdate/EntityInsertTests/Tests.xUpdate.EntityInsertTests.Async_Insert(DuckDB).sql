-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(5) -- String
SET     $Name = 'async'
DECLARE $Version  -- Int32
SET     $Version = 3
DECLARE $CreatedAt  -- DateTime2
SET     $CreatedAt = NULL
DECLARE $CreatedBy NVarChar -- String
SET     $CreatedBy = NULL

INSERT INTO EntityInsertTest
(
	Id,
	Name,
	"Version",
	CreatedAt,
	CreatedBy
)
VALUES
(
	$Id,
	$Name,
	$Version,
	$CreatedAt,
	$CreatedBy
)

-- DuckDB

SELECT
	t1.Id,
	t1.Name,
	t1."Version",
	t1.CreatedAt,
	t1.CreatedBy
FROM
	EntityInsertTest t1
LIMIT 2

