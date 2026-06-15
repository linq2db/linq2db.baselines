-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
UNION
SELECT
	t2.FirstName as FirstName,
	t2.PersonID as ID,
	t2.LastName as LastName,
	t2.MiddleName as MiddleName,
	t2.Gender as Gender
FROM
	Person t2

