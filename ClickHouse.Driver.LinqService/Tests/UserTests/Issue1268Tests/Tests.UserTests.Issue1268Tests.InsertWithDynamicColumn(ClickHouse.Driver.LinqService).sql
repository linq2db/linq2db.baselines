BeforeExecute
-- ClickHouse.Driver ClickHouse

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

BeforeExecute
-- ClickHouse.Driver ClickHouse

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

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	e.Id,
	e.Name,
	e.IsDeleted
FROM
	DynamicColumnTable e
WHERE
	e.Name = 'Some1'
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	e.Id,
	e.Name,
	e.IsDeleted
FROM
	DynamicColumnTable e
WHERE
	e.Name = 'Some2'
LIMIT 1

