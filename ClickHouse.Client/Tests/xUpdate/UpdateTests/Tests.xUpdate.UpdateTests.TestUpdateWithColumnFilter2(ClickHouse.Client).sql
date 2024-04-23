BeforeExecute
-- ClickHouse.Client ClickHouse

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
	'UpdateColumnFilter',
	100,
	'whatever',
	NULL,
	'M'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = 'UpdateColumnFilter'
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'UpdateColumnFilterUpdated'
WHERE
	PersonID = 100

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.PersonID = 100
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'UpdateColumnFilterUpdated',
	LastName = 'UpdateColumnFilterUpdated',
	MiddleName = NULL,
	Gender = 'M'
WHERE
	PersonID = 100

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.FirstName,
	_.PersonID,
	_.LastName,
	_.MiddleName,
	_.Gender
FROM
	Person _
WHERE
	_.PersonID = 100
LIMIT 2

