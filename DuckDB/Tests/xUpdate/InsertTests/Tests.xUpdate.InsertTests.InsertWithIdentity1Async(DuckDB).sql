-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4

-- DuckDB

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'John',
	'Shepard',
	'M'
)
RETURNING 
	PersonID

-- DuckDB

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = 'John' AND p.LastName = 'Shepard'
LIMIT 2

-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4

