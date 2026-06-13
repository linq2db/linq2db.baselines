-- YDB Ydb
DECLARE $p Text(4) -- String
SET     $p = 'John'u

SELECT
	t.PersonID as ID,
	t.FirstName as FirstName,
	t.LastName as LastName,
	t.MiddleName as MiddleName,
	t.Gender as Gender
FROM
	Person t
WHERE
	t.FirstName = $p
LIMIT 2

-- YDB Ydb
DECLARE $p Text(6) -- String
SET     $p = 'Tester'u

SELECT
	t.PersonID as ID,
	t.FirstName as FirstName,
	t.LastName as LastName,
	t.MiddleName as MiddleName,
	t.Gender as Gender
FROM
	Person t
WHERE
	t.FirstName = $p
LIMIT 2

