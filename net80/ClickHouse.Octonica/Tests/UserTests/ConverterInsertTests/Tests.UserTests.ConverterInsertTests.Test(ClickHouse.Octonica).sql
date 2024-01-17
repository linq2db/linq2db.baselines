BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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

