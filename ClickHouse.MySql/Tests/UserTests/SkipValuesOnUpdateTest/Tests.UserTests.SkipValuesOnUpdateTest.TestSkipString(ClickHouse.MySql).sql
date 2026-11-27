-- ClickHouse.MySql ClickHouse
INSERT INTO SkipOnUpdateTable
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'Manuel',
	14
)

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateTable t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.MySql ClickHouse
ALTER TABLE
	SkipOnUpdateTable
UPDATE
	Name = 'Jacob',
	Age = 15
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateTable t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.MySql ClickHouse
ALTER TABLE
	SkipOnUpdateTable
UPDATE
	Age = 22
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateTable t
WHERE
	t.Id = 1
LIMIT 1

