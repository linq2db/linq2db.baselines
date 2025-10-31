-- ClickHouse.Octonica ClickHouse

SELECT
	maxOrNull(t1.PersonID)
FROM
	Person t1

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
	100,
	'M',
	'fn',
	'',
	'ln'
)

-- ClickHouse.Octonica ClickHouse

SELECT
	p.PersonID,
	p.FirstName,
	p.MiddleName,
	p.LastName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID > 4
LIMIT 2

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
DELETE WHERE
	PersonID > 4

