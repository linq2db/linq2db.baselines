-- YDB Ydb
SELECT
	Unwrap(CAST('p_'u AS Text)) as c1,
	e.Id as Id,
	Unwrap(CAST('N'u AS Text)) as c2,
	CAST(NULL AS Uuid) as c3,
	CAST(NULL AS Text) as c4,
	e.Name as Name,
	CAST(NULL AS Text) as parent,
	CAST(NULL AS Text) as c5,
	CAST(NULL AS Uuid) as c6,
	CAST(NULL AS Text) as c7
FROM
	ConcatSetOpEntity e
WHERE
	e.ParentId IS NULL
UNION ALL
SELECT
	CAST(NULL AS Text) as c1,
	CAST(NULL AS Uuid) as Id,
	CAST(NULL AS Text) as c2,
	e_1.Id as c3,
	Unwrap(CAST('N'u AS Text)) as c4,
	e_1.Name as Name,
	CAST(NULL AS Text) as parent,
	Unwrap(CAST('p_'u AS Text)) as c5,
	e_1.ParentId as c6,
	Unwrap(CAST('N'u AS Text)) as c7
FROM
	ConcatSetOpEntity e_1
WHERE
	e_1.ParentId IS NOT NULL

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.ParentId as ParentId,
	t1.Name as Name
FROM
	ConcatSetOpEntity t1

