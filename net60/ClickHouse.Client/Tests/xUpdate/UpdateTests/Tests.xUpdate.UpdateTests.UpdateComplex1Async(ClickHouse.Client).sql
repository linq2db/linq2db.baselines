BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Person
(
	PersonID,
	Gender,
	FirstName,
	MiddleName,
	LastName
)
VALUES
(
	toInt32(100),
	'M',
	'UpdateComplex',
	NULL,
	'Empty'
)

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	_.PersonID,
	_.Gender,
	_.FirstName,
	_.MiddleName,
	_.LastName
FROM
	Person _
WHERE
	_.PersonID = toInt32(100)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

ALTER TABLE
	Person
UPDATE
	Gender = 'M',
	FirstName = 'UpdateComplex',
	MiddleName = NULL,
	LastName = 'UpdateComplex'
WHERE
	PersonID = toInt32(100)

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	_.PersonID,
	_.Gender,
	_.FirstName,
	_.MiddleName,
	_.LastName
FROM
	Person _
WHERE
	_.PersonID = toInt32(100)
LIMIT toInt32(1)

