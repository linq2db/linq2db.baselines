BeforeExecute
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
	'UpdateColumnFilterUpdated',
	toInt32(100),
	'whatever',
	'som middle name',
	'M'
)

BeforeExecute
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
	x.FirstName = 'UpdateColumnFilterUpdated'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'UpdateColumnFilterUpdated',
	LastName = 'whatever',
	Gender = 'M'
WHERE
	PersonID = toInt32(100)

BeforeExecute
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
	x.FirstName = 'UpdateColumnFilterUpdated'
LIMIT toInt32(1)

