-- ClickHouse.MySql ClickHouse
INSERT INTO SkipOnUpdateEnum
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
	'Female'
)

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	SkipOnUpdateEnum t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.MySql ClickHouse
ALTER TABLE
	SkipOnUpdateEnum
UPDATE
	Name = 'Jack',
	Age = 2,
	Gender = 'Male'
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	SkipOnUpdateEnum t
WHERE
	t.Id = 1
LIMIT 1

-- ClickHouse.MySql ClickHouse
ALTER TABLE
	SkipOnUpdateEnum
UPDATE
	Name = 'Francine',
	Age = 20
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse
SELECT
	t.Id,
	t.Name,
	t.Age,
	t.Gender
FROM
	SkipOnUpdateEnum t
WHERE
	t.Id = 1
LIMIT 1

