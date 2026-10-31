-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
UNION
SELECT
	p_1.PersonID + 100 as PersonID
FROM
	Person p_1

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

