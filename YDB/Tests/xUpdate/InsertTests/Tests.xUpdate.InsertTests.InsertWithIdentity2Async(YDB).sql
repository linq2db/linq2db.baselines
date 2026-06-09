-- YDB Ydb

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

-- YDB Ydb

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'John'u,
	'Shepard'u,
	'M'u
)
RETURNING
	PersonID

-- YDB Ydb

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.FirstName = 'John'u AND p.LastName = 'Shepard'u
LIMIT 2

-- YDB Ydb

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

