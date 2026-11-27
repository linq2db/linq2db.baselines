-- ClickHouse.MySql ClickHouse
INSERT INTO SkipOnInsertTable
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'Smith',
	55
)

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertTable t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.MySql ClickHouse
INSERT INTO SkipOnInsertTable
(
	Id,
	Name,
	Age
)
VALUES
(
	2,
	'Tommy',
	50
)

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertTable t
WHERE
	t.Id = 2
LIMIT 1

