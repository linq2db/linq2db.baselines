-- DuckDB

SELECT
	x.PersonID
FROM
	Person x
WHERE
	x.FirstName IN ('John')

-- DuckDB
DECLARE $st NVarChar(4) -- String
SET     $st = 'John'

SELECT
	x.PersonID
FROM
	Person x
WHERE
	x.FirstName IN (CAST($st AS VARCHAR))

