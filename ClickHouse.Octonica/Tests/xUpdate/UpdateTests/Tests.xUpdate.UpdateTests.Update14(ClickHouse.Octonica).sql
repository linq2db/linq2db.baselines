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
	'Update14',
	100,
	'whatever',
	NULL,
	'M'
)

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
UPDATE
	LastName = toString(12)
WHERE
	startsWith(FirstName, 'Update14')

-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	startsWith(t1.FirstName, 'Update14')

