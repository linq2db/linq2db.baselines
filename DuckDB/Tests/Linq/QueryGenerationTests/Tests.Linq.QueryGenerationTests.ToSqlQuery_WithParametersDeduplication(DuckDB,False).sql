-- DuckDB
DECLARE $firstName NVarChar(4) -- String
SET     $firstName = 'John'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = CAST($firstName AS VARCHAR) OR p.LastName = CAST($firstName AS VARCHAR)

-- DuckDB
DECLARE $firstName NVarChar(4) -- String
SET     $firstName = 'John'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = CAST($firstName AS VARCHAR) OR p.LastName = CAST($firstName AS VARCHAR)
LIMIT 2

