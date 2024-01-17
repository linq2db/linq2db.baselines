BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
UPDATE
	Gender = 'O'
WHERE
	startsWith(FirstName, 'UpdateComplex')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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

