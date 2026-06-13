-- YDB Ydb

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

-- YDB Ydb
DECLARE $FirstName Text(4) -- String
SET     $FirstName = 'John'u
DECLARE $LastName Text(7) -- String
SET     $LastName = 'Shepard'u
DECLARE $Gender Text(1) -- AnsiStringFixedLength
SET     $Gender = 'M'u

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	$FirstName,
	$LastName,
	$Gender
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

