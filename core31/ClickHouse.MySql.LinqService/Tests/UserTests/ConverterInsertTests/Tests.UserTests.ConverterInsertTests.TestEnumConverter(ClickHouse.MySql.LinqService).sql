BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Person
(
	PersonID,
	FirstName,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	toInt32(100),
	'123',
	'456',
	'789',
	'M'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.PersonID,
	t.FirstName,
	t.LastName,
	t.MiddleName,
	t.Gender
FROM
	Person t
WHERE
	t.PersonID = toInt32(100)
LIMIT toInt32(1)

