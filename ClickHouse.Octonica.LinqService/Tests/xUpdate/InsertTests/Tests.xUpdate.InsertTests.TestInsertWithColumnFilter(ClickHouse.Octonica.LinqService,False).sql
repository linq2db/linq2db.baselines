BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO Person
(
	FirstName,
	PersonID,
	LastName,
	Gender
)
VALUES
(
	'InsertColumnFilter',
	0,
	'whatever',
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
DELETE WHERE
	FirstName = 'InsertColumnFilter'

