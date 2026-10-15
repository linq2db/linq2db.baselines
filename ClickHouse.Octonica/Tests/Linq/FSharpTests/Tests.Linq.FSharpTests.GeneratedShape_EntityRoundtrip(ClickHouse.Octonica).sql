-- ClickHouse.Octonica ClickHouse
INSERT INTO GeneratedScaffoldPerson
(
	PersonID,
	FirstName,
	MiddleName,
	Age
)
VALUES
(
	1,
	'John',
	'Q',
	42
)

-- ClickHouse.Octonica ClickHouse
INSERT INTO GeneratedScaffoldPerson
(
	PersonID,
	FirstName,
	MiddleName,
	Age
)
VALUES
(
	2,
	'Jane',
	NULL,
	NULL
)

-- ClickHouse.Octonica ClickHouse
SELECT
	p.PersonID,
	p.FirstName,
	p.MiddleName,
	p.Age
FROM
	GeneratedScaffoldPerson p
WHERE
	p.PersonID = 1
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	p.PersonID,
	p.FirstName,
	p.MiddleName,
	p.Age
FROM
	GeneratedScaffoldPerson p
WHERE
	p.PersonID = 2
LIMIT 2

