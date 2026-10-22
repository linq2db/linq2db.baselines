-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	p.PersonID = 1

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

