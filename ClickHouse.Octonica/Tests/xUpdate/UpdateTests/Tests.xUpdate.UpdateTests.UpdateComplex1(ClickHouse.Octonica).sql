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
	'UpdateComplex',
	NULL,
	'Empty'
)

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.PersonID,
	t1.Gender,
	t1.FirstName,
	t1.MiddleName,
	t1.LastName
FROM
	Person t1
WHERE
	t1.PersonID = 100
LIMIT 1

-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	Person
UPDATE
	Gender = 'M',
	FirstName = 'UpdateComplex',
	MiddleName = NULL,
	LastName = 'UpdateComplex'
WHERE
	PersonID = 100

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.PersonID,
	t1.Gender,
	t1.FirstName,
	t1.MiddleName,
	t1.LastName
FROM
	Person t1
WHERE
	t1.PersonID = 100
LIMIT 1

