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
	100,
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
	_.PersonID = 100
LIMIT 1

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
	PersonID = 100

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
	_.PersonID = 100
LIMIT 1

