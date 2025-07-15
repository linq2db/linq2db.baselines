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
	t1.PersonID,
	t1.Gender,
	t1.FirstName,
	t1.MiddleName,
	t1.LastName
FROM
	Person t1
WHERE
	t1.PersonID = 100
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
	t1.PersonID,
	t1.Gender,
	t1.FirstName,
	t1.MiddleName,
	t1.LastName
FROM
	Person t1
WHERE
	t1.PersonID = 100
LIMIT 1

