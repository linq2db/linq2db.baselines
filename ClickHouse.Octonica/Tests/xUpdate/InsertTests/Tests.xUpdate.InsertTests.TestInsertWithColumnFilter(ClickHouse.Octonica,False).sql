BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	FirstName = 'InsertColumnFilter'

