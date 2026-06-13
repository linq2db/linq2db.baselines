-- YDB Ydb
DECLARE $p Text(3) -- String
SET     $p = 'abc'u

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

