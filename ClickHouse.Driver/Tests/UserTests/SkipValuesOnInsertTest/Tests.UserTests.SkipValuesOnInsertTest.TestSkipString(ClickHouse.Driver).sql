-- ClickHouse.Driver ClickHouse
INSERT INTO SkipOnInsertTable
(
	Id,
	Age
)
VALUES
(
	1,
	14
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
	Age
)
VALUES
(
	2,
	15
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

