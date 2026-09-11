-- ClickHouse.Octonica ClickHouse
SELECT
	toString('p_') as c1,
	e.Id,
	toString('N') as c2,
	toUUID(NULL) as c3,
	toString(NULL) as c4,
	e.Name,
	toString(NULL) as parent,
	toString(NULL) as c5,
	toUUID(NULL) as c6,
	toString(NULL) as c7
FROM
	ConcatSetOpEntity e
WHERE
	e.ParentId IS NULL
UNION ALL
SELECT
	toString(NULL) as c1,
	toUUID(NULL) as Id,
	toString(NULL) as c2,
	e_1.Id as c3,
	toString('N') as c4,
	e_1.Name as Name,
	toString(NULL) as parent,
	toString('p_') as c5,
	e_1.ParentId as c6,
	toString('N') as c7
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

