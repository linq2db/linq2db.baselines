-- ClickHouse.Octonica ClickHouse
SELECT
	toString('p_') as id,
	e.Id as Id_1,
	toString('N') as id_2,
	toUUID(NULL) as c1,
	toString(NULL) as c2,
	e.Name,
	toString(NULL) as parent,
	toString(NULL) as c3,
	toUUID(NULL) as c4,
	toString(NULL) as c5
FROM
	ConcatSetOpEntity e
WHERE
	e.ParentId IS NULL
UNION ALL
SELECT
	toString(NULL) as id,
	toUUID(NULL) as Id_1,
	toString(NULL) as id_2,
	e_1.Id as c1,
	toString('N') as c2,
	e_1.Name as Name,
	toString(NULL) as parent,
	toString('p_') as c3,
	e_1.ParentId as c4,
	toString('N') as c5
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

