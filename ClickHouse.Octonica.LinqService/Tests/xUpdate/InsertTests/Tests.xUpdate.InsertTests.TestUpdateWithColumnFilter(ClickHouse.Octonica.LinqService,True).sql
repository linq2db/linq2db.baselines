BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	Person
UPDATE
	FirstName = 'InsertColumnFilter',
	LastName = 'whatever',
	MiddleName = 'updated name',
	Gender = 'M'
WHERE
	PersonID = 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	Person
DELETE WHERE
	FirstName = 'InsertColumnFilter'

