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
	100,
	'123',
	'456',
	'789',
	'M'
)

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
	t.PersonID = 100
LIMIT 1

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
	t.PersonID = 100
LIMIT 1

