-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	p.Gender as Gender
FROM
	Person p
ORDER BY
	p.Gender,
	p.PersonID

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

