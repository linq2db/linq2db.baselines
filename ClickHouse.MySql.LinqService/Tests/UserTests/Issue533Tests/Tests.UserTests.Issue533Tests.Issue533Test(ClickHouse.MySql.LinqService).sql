BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	'FirstName533',
	NULL,
	'LastName533'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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

