-- ClickHouse.MySql ClickHouse
INSERT INTO SkipOnInsertCache
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'John',
	2
)

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertCache t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.MySql ClickHouse
ALTER TABLE
	SkipOnInsertCache
UPDATE
	Name = 'John',
	Age = 2
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertCache t
WHERE
	t.Id = 1
LIMIT 1

