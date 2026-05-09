-- DuckDB
DECLARE $FirstName NVarChar(18) -- String
SET     $FirstName = 'InsertColumnFilter'
DECLARE $LastName NVarChar(8) -- String
SET     $LastName = 'whatever'
DECLARE $MiddleName NVarChar(15) -- String
SET     $MiddleName = 'som middle name'
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

-- DuckDB
DECLARE $FirstName NVarChar(18) -- String
SET     $FirstName = 'InsertColumnFilter'

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = $FirstName
LIMIT 1

-- DuckDB
DECLARE $FirstName NVarChar(18) -- String
SET     $FirstName = 'InsertColumnFilter'
DECLARE $LastName NVarChar(8) -- String
SET     $LastName = 'whatever'
DECLARE $MiddleName NVarChar(12) -- String
SET     $MiddleName = 'updated name'
DECLARE $Gender Char(1) -- AnsiStringFixedLength
SET     $Gender = 'M'
DECLARE $ID  -- Int32
SET     $ID = 5

UPDATE
	Person
SET
	FirstName = $FirstName,
	LastName = $LastName,
	MiddleName = $MiddleName,
	Gender = $Gender
WHERE
	Person.PersonID = $ID

-- DuckDB
DECLARE $FirstName NVarChar(18) -- String
SET     $FirstName = 'InsertColumnFilter'

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = $FirstName
LIMIT 1

-- DuckDB
DECLARE $newName NVarChar(18) -- String
SET     $newName = 'InsertColumnFilter'

DELETE FROM
	Person x
WHERE
	x.FirstName = $newName

