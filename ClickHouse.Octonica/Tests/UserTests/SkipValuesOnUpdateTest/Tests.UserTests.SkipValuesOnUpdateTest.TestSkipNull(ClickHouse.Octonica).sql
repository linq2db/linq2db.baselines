-- ClickHouse.Octonica ClickHouse
INSERT INTO SkipOnUpdateNulls
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'Tommy',
	NULL
)

-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateNulls t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	SkipOnUpdateNulls
UPDATE
	Name = 'Jack',
	Age = 2
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateNulls t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	SkipOnUpdateNulls
UPDATE
	Name = 'Franki'
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateNulls t
WHERE
	t.Id = 1
LIMIT 1

