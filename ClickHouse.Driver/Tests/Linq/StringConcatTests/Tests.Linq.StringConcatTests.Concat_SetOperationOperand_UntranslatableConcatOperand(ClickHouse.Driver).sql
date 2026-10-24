-- ClickHouse.Driver ClickHouse
SELECT
	toString('p_') as id,
	e.Id as Id_1,
	toString('N') as id_2,
	e.Name
FROM
	ConcatSetOpEntity e
WHERE
	e.ParentId IS NULL
UNION ALL
SELECT
	toString('c_') as id,
	e_1.Id as Id_1,
	toString('N') as id_2,
	e_1.Name as Name
FROM
	ConcatSetOpEntity e_1
WHERE
	e_1.ParentId IS NOT NULL

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.ParentId,
	t1.Name
FROM
	ConcatSetOpEntity t1

