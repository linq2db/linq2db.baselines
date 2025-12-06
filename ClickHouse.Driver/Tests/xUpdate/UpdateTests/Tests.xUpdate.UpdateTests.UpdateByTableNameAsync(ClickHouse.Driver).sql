-- ClickHouse.Driver ClickHouse

INSERT INTO xxPerson
(
	FirstName,
	PersonID,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	'Steven',
	0,
	'King',
	NULL,
	'M'
)

-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	xxPerson t1

-- ClickHouse.Driver ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	xxPerson t1
LIMIT 2

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	xxPerson
UPDATE
	FirstName = 'Steven',
	LastName = 'King',
	MiddleName = 'None',
	Gender = 'M'
WHERE
	PersonID = 0

-- ClickHouse.Driver ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	xxPerson t1
LIMIT 2

