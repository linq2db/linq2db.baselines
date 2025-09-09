BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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
-- ClickHouse.Driver ClickHouse (asynchronously)

ALTER TABLE
	Person
UPDATE
	LastName = FirstName
WHERE
	startsWith(FirstName, 'UpdateComplex')

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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

