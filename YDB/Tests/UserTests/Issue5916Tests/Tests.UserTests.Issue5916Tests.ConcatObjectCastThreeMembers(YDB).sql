-- YDB Ydb
SELECT
	Unwrap(CAST('p_'u AS Text)) as c1,
	p.PersonID as PersonID,
	Unwrap(CAST('X'u AS Text)) as c2,
	p.FirstName as FirstName,
	p.LastName as LastName
FROM
	Person p
WHERE
	p.PersonID > 2
UNION ALL
SELECT
	Unwrap(CAST('q_'u AS Text)) as c1,
	p_1.PersonID as PersonID,
	Unwrap(CAST('X'u AS Text)) as c2,
	p_1.FirstName as FirstName,
	p_1.LastName as LastName
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

