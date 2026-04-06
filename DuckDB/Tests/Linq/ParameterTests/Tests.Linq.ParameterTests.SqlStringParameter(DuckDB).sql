-- DuckDB
DECLARE $p NVarChar(4) -- String
SET     $p = 'John'

SELECT
	t.PersonID,
	t.FirstName,
	t.LastName,
	t.MiddleName,
	t.Gender
FROM
	Person t
WHERE
	t.FirstName = CAST($p AS VARCHAR)
LIMIT 2

-- DuckDB
DECLARE $p NVarChar(6) -- String
SET     $p = 'Tester'

SELECT
	t.PersonID,
	t.FirstName,
	t.LastName,
	t.MiddleName,
	t.Gender
FROM
	Person t
WHERE
	t.FirstName = CAST($p AS VARCHAR)
LIMIT 2

