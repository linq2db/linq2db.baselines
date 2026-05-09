-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4

-- DuckDB
DECLARE $FirstName NVarChar(5) -- String
SET     $FirstName = 'John0'
DECLARE $LastName NVarChar(7) -- String
SET     $LastName = 'Shepard'
DECLARE $MiddleName NVarChar -- String
SET     $MiddleName = NULL
DECLARE $Gender Char(1) -- AnsiStringFixedLength
SET     $Gender = 'M'

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

-- DuckDB
DECLARE $p NVarChar(5) -- String
SET     $p = 'John0'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = $p AND p.LastName = 'Shepard'
LIMIT 2

-- DuckDB
DECLARE $FirstName NVarChar(5) -- String
SET     $FirstName = 'John1'
DECLARE $LastName NVarChar(7) -- String
SET     $LastName = 'Shepard'
DECLARE $MiddleName NVarChar -- String
SET     $MiddleName = NULL
DECLARE $Gender Char(1) -- AnsiStringFixedLength
SET     $Gender = 'M'

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

-- DuckDB
DECLARE $p NVarChar(5) -- String
SET     $p = 'John1'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = $p AND p.LastName = 'Shepard'
LIMIT 2

-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4

