-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(1) -- String
SET     $Name = 'n'
DECLARE $Version  -- Int32
SET     $Version = 101
DECLARE $stamp  -- DateTime2
SET     $stamp = '2026-06-01 00:00:00.000000'::TIMESTAMP

INSERT INTO EntityInsertTest
(
	Id,
	Name,
	"Version",
	CreatedAt
)
VALUES
(
	$Id,
	$Name,
	$Version,
	$stamp
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

