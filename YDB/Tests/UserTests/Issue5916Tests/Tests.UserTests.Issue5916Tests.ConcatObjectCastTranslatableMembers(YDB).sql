-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	p.FirstName as FirstName
FROM
	Person p
WHERE
	p.PersonID > 2
UNION ALL
SELECT
	p_1.PersonID as PersonID,
	p_1.LastName as FirstName
FROM
	Person p_1
WHERE
	p_1.PersonID <= 2

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

