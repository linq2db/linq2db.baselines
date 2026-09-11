-- ClickHouse.Octonica ClickHouse
SELECT
	toString('p_') as c1,
	e.Id,
	toString('N') as c2,
	e.Name
FROM
	ConcatSetOpEntity e
WHERE
	e.ParentId IS NULL
UNION ALL
SELECT
	toString('c_') as c1,
	e_1.Id as Id,
	toString('N') as c2,
	e_1.Name as Name
FROM
	ConcatSetOpEntity e_1
WHERE
	e_1.ParentId IS NOT NULL

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.ParentId,
	t1.Name
FROM
	ConcatSetOpEntity t1

