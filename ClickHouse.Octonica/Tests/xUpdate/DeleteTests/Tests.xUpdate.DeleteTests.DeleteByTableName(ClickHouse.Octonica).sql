-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	xxPerson t1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	xxPerson t1
LIMIT 2

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	xxPerson
DELETE WHERE
	PersonID = 0

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	xxPerson t1

