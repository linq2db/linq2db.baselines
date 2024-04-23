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
-- ClickHouse.Client ClickHouse

ALTER TABLE
	Person
UPDATE
	Gender = 'O'
WHERE
	startsWith(FirstName, 'UpdateComplex')

BeforeExecute
-- ClickHouse.Client ClickHouse

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

