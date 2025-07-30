BeforeExecute
-- ClickHouse.Client ClickHouse

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

BeforeExecute
-- ClickHouse.Client ClickHouse

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

BeforeExecute
-- ClickHouse.Client ClickHouse

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

