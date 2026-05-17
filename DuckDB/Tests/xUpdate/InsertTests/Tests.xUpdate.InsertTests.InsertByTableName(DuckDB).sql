-- DuckDB
DECLARE $FirstName NVarChar(6) -- String
SET     $FirstName = 'Steven'
DECLARE $LastName NVarChar(4) -- String
SET     $LastName = 'King'
DECLARE $MiddleName NVarChar -- String
SET     $MiddleName = NULL
DECLARE $Gender Char(1) -- AnsiStringFixedLength
SET     $Gender = 'M'

INSERT INTO xxPerson
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

-- DuckDB
DECLARE $FirstName NVarChar(6) -- String
SET     $FirstName = 'Steven'
DECLARE $LastName NVarChar(4) -- String
SET     $LastName = 'King'
DECLARE $MiddleName NVarChar -- String
SET     $MiddleName = NULL
DECLARE $Gender Char(1) -- AnsiStringFixedLength
SET     $Gender = 'M'

INSERT INTO xxPerson
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
DECLARE $FirstName NVarChar(6) -- String
SET     $FirstName = 'Steven'
DECLARE $LastName NVarChar(4) -- String
SET     $LastName = 'King'
DECLARE $MiddleName NVarChar -- String
SET     $MiddleName = NULL
DECLARE $Gender Char(1) -- AnsiStringFixedLength
SET     $Gender = 'M'

INSERT INTO xxPerson
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

SELECT
	COUNT(*)
FROM
	xxPerson t1

-- DuckDB

SELECT
	COUNT(*)
FROM
	xxPerson p
WHERE
	p.FirstName = 'Steven' AND p.LastName = 'King' AND
	p.Gender = 'M'

