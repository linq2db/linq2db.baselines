-- DuckDB

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName IS NULL
LIMIT 1

-- DuckDB
DECLARE $p NVarChar(4) -- String
SET     $p = 'John'

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName = CAST($p AS VARCHAR)
LIMIT 1

