-- DuckDB
DECLARE $Id NVarChar(1) -- String
SET     $Id = '1'

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = $Id

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
DECLARE $Id NVarChar(1) -- String
SET     $Id = '1'

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = $Id

