-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertCache t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	SkipOnInsertCache
UPDATE
	Name = 'John',
	Age = 2
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertCache t
WHERE
	t.Id = 1
LIMIT 1

