-- YDB Ydb
SELECT
	Unwrap(CAST('p_'u AS Text)) as c1,
	e.Id as Id,
	Unwrap(CAST('N'u AS Text)) as c2,
	e.Name as Name
FROM
	ConcatSetOpEntity e
WHERE
	e.Name IS NOT NULL
UNION
SELECT
	Unwrap(CAST('p_'u AS Text)) as c1,
	e_1.Id as Id,
	Unwrap(CAST('N'u AS Text)) as c2,
	e_1.Name as Name
FROM
	ConcatSetOpEntity e_1
WHERE
	e_1.ParentId IS NULL

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.ParentId as ParentId,
	t1.Name as Name
FROM
	ConcatSetOpEntity t1

