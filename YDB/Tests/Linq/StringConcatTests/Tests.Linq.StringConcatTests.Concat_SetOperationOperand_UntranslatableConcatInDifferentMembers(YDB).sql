-- YDB Ydb
SELECT
	Unwrap(CAST('p_'u AS Text)) as id,
	e.Id as Id_1,
	Unwrap(CAST('N'u AS Text)) as id_2,
	CAST(NULL AS Uuid) as c1,
	CAST(NULL AS Text) as c2,
	e.Name as Name,
	CAST(NULL AS Text) as parent,
	CAST(NULL AS Text) as c3,
	CAST(NULL AS Uuid) as c4,
	CAST(NULL AS Text) as c5
FROM
	ConcatSetOpEntity e
WHERE
	e.ParentId IS NULL
UNION ALL
SELECT
	CAST(NULL AS Text) as id,
	CAST(NULL AS Uuid) as Id_1,
	CAST(NULL AS Text) as id_2,
	e_1.Id as c1,
	Unwrap(CAST('N'u AS Text)) as c2,
	e_1.Name as Name,
	CAST(NULL AS Text) as parent,
	Unwrap(CAST('p_'u AS Text)) as c3,
	e_1.ParentId as c4,
	Unwrap(CAST('N'u AS Text)) as c5
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

