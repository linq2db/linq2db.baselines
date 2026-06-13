-- YDB Ydb

SELECT
	p.PersonID as Id,
	p.FirstName as FirstName,
	p.LastName as LastName
FROM
	Person p
UNION ALL
SELECT
	p_1.PersonID as Id,
	p_1.FirstName as FirstName,
	p_1.LastName as LastName
FROM
	Person p_1

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1

