-- ClickHouse.MySql ClickHouse
INSERT INTO SkipOnInsertMixed
(
	Id,
	Name,
	Age
)
VALUES
(
	1,
	'Jason',
	20
)

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertMixed t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.MySql ClickHouse
ALTER TABLE
	SkipOnInsertMixed
UPDATE
	Age = 20
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertMixed t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.MySql ClickHouse
INSERT INTO SkipOnInsertMixed
(
	Id,
	Age
)
VALUES
(
	2,
	25
)

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertMixed t
WHERE
	t.Id = 2
LIMIT 1

-- ClickHouse.MySql ClickHouse
ALTER TABLE
	SkipOnInsertMixed
UPDATE
	Name = 'Jessy',
	Age = 25
WHERE
	Id = 2

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertMixed t
WHERE
	t.Id = 2
LIMIT 1

