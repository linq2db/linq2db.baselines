-- ClickHouse.MySql ClickHouse
INSERT INTO SkipCustomValuesTable
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'John',
	15
)

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipCustomValuesTable t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.MySql ClickHouse
INSERT INTO SkipCustomValuesTable
(
	Id,
	Name
)
VALUES
(
	2,
	'Max'
)

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipCustomValuesTable t
WHERE
	t.Id = 2
LIMIT 1

