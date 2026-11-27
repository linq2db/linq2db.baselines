-- ClickHouse.Driver ClickHouse
INSERT INTO SkipOnInsertTable
(
	Id,
	Name
)
VALUES
(
	1,
	'Smith'
)

-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertTable t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.Driver ClickHouse
INSERT INTO SkipOnInsertTable
(
	Id,
	Name
)
VALUES
(
	2,
	'Tommy'
)

-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertTable t
WHERE
	t.Id = 2
LIMIT 1

