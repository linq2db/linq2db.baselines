-- YDB Ydb
DECLARE $param Text(4) -- String
SET     $param = 'test'u

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.LastName = $param

