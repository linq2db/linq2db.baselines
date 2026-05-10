-- DuckDB
DECLARE $p NVarChar(1) -- String
SET     $p = '1'

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = $p

-- DuckDB

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	1 = 0

-- DuckDB
DECLARE $p NVarChar(1) -- String
SET     $p = '1'

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = $p

