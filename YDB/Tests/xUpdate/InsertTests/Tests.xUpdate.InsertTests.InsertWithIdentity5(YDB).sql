-- YDB Ydb

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

-- YDB Ydb
DECLARE $FirstName Text(5) -- String
SET     $FirstName = 'John0'u
DECLARE $LastName Text(7) -- String
SET     $LastName = 'Shepard'u
DECLARE $MiddleName Text -- String
SET     $MiddleName = NULL
DECLARE $Gender Text(1) -- AnsiStringFixedLength
SET     $Gender = 'M'u

INSERT INTO Person
(
	FirstName,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	$FirstName,
	$LastName,
	$MiddleName,
	$Gender
)
RETURNING
	PersonID

-- YDB Ydb
DECLARE $p Text(5) -- String
SET     $p = 'John0'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.FirstName = $p AND p.LastName = 'Shepard'u
LIMIT 2

-- YDB Ydb
DECLARE $FirstName Text(5) -- String
SET     $FirstName = 'John1'u
DECLARE $LastName Text(7) -- String
SET     $LastName = 'Shepard'u
DECLARE $MiddleName Text -- String
SET     $MiddleName = NULL
DECLARE $Gender Text(1) -- AnsiStringFixedLength
SET     $Gender = 'M'u

INSERT INTO Person
(
	FirstName,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	$FirstName,
	$LastName,
	$MiddleName,
	$Gender
)
RETURNING
	PersonID

-- YDB Ydb
DECLARE $p Text(5) -- String
SET     $p = 'John1'u

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	p.FirstName = $p AND p.LastName = 'Shepard'u
LIMIT 2

-- YDB Ydb

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

