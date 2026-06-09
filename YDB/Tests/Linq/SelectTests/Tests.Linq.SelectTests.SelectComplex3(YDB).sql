-- YDB Ydb

SELECT
	t1.PersonID as ID,
	t1.Gender as Gender,
	t1.FirstName as FirstName,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName
FROM
	Person t1
WHERE
	t1.PersonID = 1
LIMIT 1

