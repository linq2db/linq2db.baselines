BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
	toInt32(100),
	'whatever',
	NULL,
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
	x.FirstName = 'UpdateColumnFilter'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'UpdateColumnFilterUpdated'
WHERE
	PersonID = toInt32(100)

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
	x.PersonID = toInt32(100)
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'UpdateColumnFilterUpdated',
	LastName = 'UpdateColumnFilterUpdated',
	MiddleName = NULL,
	Gender = 'M'
WHERE
	PersonID = toInt32(100)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.FirstName,
	_.PersonID,
	_.LastName,
	_.MiddleName,
	_.Gender
FROM
	Person _
WHERE
	_.PersonID = toInt32(100)
LIMIT toInt32(2)

