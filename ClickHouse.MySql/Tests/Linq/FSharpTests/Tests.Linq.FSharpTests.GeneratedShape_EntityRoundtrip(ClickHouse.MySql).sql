-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
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

-- ClickHouse.MySql ClickHouse
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

