-- DuckDB

DELETE FROM
	Person p
WHERE
	p.FirstName LIKE 'Insert14%' ESCAPE '~'

-- DuckDB

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'Insert14' || (
		SELECT
			p.FirstName
		FROM
			Person p
		WHERE
			p.PersonID = 1
	),
	'Shepard',
	'M'
)

-- DuckDB

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName LIKE 'Insert14%' ESCAPE '~'

-- DuckDB

DELETE FROM
	Person p
WHERE
	p.FirstName LIKE 'Insert14%' ESCAPE '~'

