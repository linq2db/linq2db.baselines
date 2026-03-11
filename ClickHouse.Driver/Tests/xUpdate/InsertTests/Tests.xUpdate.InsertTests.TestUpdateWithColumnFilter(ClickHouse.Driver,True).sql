-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'InsertColumnFilter',
	LastName = 'whatever',
	MiddleName = 'updated name',
	Gender = 'M'
WHERE
	PersonID = 0

-- ClickHouse.Driver ClickHouse

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

-- ClickHouse.Driver ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	FirstName = 'InsertColumnFilter'

