-- YDB Ydb
SELECT
	Unwrap(CAST('p_'u AS Text)) as c1,
	p.PersonID as PersonID,
	Unwrap(CAST('X'u AS Text)) as c2,
	p.FirstName as FirstName,
	CAST(NULL AS Text) as c3,
	CAST(NULL AS Int32) as c4,
	CAST(NULL AS Text) as c5,
	CAST(NULL AS Text) as c6,
	CAST(NULL AS Text) as c7
FROM
	Person p
WHERE
	p.PersonID > 2
UNION ALL
SELECT
	CAST(NULL AS Text) as c1,
	CAST(NULL AS Int32) as PersonID,
	CAST(NULL AS Text) as c2,
	CAST(NULL AS Text) as FirstName,
	Unwrap(CAST('c_'u AS Text)) as c3,
	p_1.PersonID as c4,
	Unwrap(CAST('X'u AS Text)) as c5,
	p_1.FirstName as c6,
	p_1.LastName as c7
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

