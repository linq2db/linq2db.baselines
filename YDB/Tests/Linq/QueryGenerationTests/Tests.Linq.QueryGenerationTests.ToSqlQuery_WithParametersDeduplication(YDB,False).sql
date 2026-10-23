-- YDB Ydb
DECLARE $firstName Text(4) -- String
SET     $firstName = 'John'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as PersonID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.FirstName = $firstName OR p.LastName = $firstName

-- YDB Ydb
DECLARE $firstName Text(4) -- String
SET     $firstName = 'John'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as PersonID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.FirstName = $firstName OR p.LastName = $firstName
LIMIT 2

