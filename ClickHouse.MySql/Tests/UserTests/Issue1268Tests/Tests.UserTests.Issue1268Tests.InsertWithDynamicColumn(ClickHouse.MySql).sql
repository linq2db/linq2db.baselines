-- ClickHouse.MySql ClickHouse

INSERT INTO DynamicColumnTable
(
	Id,
	Name,
	IsDeleted
)
VALUES
(
	1,
	'Some1',
	true
)

-- ClickHouse.MySql ClickHouse

INSERT INTO DynamicColumnTable
(
	Id,
	Name,
	IsDeleted
)
VALUES
(
	2,
	'Some2',
	false
)

-- ClickHouse.MySql ClickHouse

SELECT
	e.Id,
	e.Name,
	e.IsDeleted
FROM
	DynamicColumnTable e
WHERE
	e.Name = 'Some1'
LIMIT 1

-- ClickHouse.MySql ClickHouse

SELECT
	e.Id,
	e.Name,
	e.IsDeleted
FROM
	DynamicColumnTable e
WHERE
	e.Name = 'Some2'
LIMIT 1

