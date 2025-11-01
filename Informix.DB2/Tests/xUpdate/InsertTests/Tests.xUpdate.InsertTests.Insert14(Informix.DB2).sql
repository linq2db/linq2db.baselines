-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.FirstName LIKE 'Insert14%' ESCAPE '~'

-- Informix.DB2 Informix

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

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName LIKE 'Insert14%' ESCAPE '~'

-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.FirstName LIKE 'Insert14%' ESCAPE '~'

