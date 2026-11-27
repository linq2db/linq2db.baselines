-- ClickHouse.Driver ClickHouse
INSERT INTO SkipOnInsertEnum
(
	Id,
	Name,
	Age,
	Gender
)
VALUES
(
	1,
	'Max',
	20,
	'Male'
)

-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	SkipOnInsertEnum t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.Driver ClickHouse
INSERT INTO SkipOnInsertEnum
(
	Id,
	Name,
	Age
)
VALUES
(
	2,
	'Jenny',
	25
)

-- ClickHouse.Driver ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	SkipOnInsertEnum t
WHERE
	t.Id = 2
LIMIT 1

