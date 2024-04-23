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
	'test_inherited_insert',
	10500,
	'test',
	'test',
	'U'
)

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
	_.FirstName = 'test_inherited_insert'
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'test_inherited_insert',
	LastName = 'test',
	MiddleName = 'test',
	Gender = 'U'
WHERE
	PersonID = 10500

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
	_.FirstName = 'test_inherited_insert'
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	PersonID = 10500

