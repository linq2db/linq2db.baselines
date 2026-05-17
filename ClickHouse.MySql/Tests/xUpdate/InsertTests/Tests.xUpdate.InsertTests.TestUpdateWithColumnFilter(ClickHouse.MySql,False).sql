-- ClickHouse.MySql ClickHouse

INSERT INTO Person
(
	FirstName,
	PersonID,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	'InsertColumnFilter',
	0,
	'whatever',
	'som middle name',
	'M'
)

-- ClickHouse.MySql ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = 'InsertColumnFilter'
LIMIT 1

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'InsertColumnFilter',
	LastName = 'whatever',
	Gender = 'M'
WHERE
	PersonID = 0

-- ClickHouse.MySql ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = 'InsertColumnFilter'
LIMIT 1

-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	FirstName = 'InsertColumnFilter'

