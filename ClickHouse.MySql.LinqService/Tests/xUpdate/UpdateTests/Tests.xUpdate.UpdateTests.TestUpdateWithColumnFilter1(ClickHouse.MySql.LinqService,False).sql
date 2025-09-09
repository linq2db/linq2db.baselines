BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

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
	'UpdateColumnFilterUpdated',
	100,
	'whatever',
	'som middle name',
	'M'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = 'UpdateColumnFilterUpdated'
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

ALTER TABLE
	Person
UPDATE
	FirstName = 'UpdateColumnFilterUpdated',
	LastName = 'whatever',
	Gender = 'M'
WHERE
	PersonID = 100

BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = 'UpdateColumnFilterUpdated'
LIMIT 1

