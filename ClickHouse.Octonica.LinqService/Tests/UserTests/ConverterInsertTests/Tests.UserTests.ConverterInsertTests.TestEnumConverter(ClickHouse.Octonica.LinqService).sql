BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse (asynchronously)

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

