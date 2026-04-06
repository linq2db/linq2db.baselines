-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 123
DECLARE $FirstName NVarChar(4) -- String
SET     $FirstName = 'John'

INSERT INTO TestInsertOrReplaceTable
(
	ID,
	FirstName
)
VALUES
(
	CAST($ID AS INTEGER),
	CAST($FirstName AS VARCHAR)
)

-- DuckDB

SELECT
	COUNT(*)
FROM
	TestInsertOrReplaceTable x
WHERE
	x.ID = 123 AND x.FirstName = 'John'

