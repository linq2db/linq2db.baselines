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
	'test_inherited_insert',
	toInt32(10500),
	'test',
	'test',
	'U'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Person
UPDATE
	FirstName = 'test_inherited_insert',
	LastName = 'test',
	MiddleName = 'test',
	Gender = 'U'
WHERE
	PersonID = toInt32(10500)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	PersonID = toInt32(10500)

