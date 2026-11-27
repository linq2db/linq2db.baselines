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
	'Smith',
	2
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
	Name = 'Franki',
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
	Name = 'Jack'
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

