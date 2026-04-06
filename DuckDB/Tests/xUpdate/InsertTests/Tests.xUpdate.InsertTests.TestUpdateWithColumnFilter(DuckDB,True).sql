-- DuckDB
DECLARE $FirstName NVarChar(18) -- String
SET     $FirstName = 'InsertColumnFilter'
DECLARE $LastName NVarChar(8) -- String
SET     $LastName = 'whatever'
DECLARE $MiddleName NVarChar(15) -- String
SET     $MiddleName = 'som middle name'
DECLARE $Gender NVarChar(1) -- String
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
	CAST($FirstName AS VARCHAR),
	CAST($LastName AS VARCHAR),
	CAST($MiddleName AS VARCHAR),
	CAST($Gender AS VARCHAR)
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
	x.FirstName = CAST($FirstName AS VARCHAR)
LIMIT 1

-- DuckDB
DECLARE $FirstName NVarChar(18) -- String
SET     $FirstName = 'InsertColumnFilter'
DECLARE $LastName NVarChar(8) -- String
SET     $LastName = 'whatever'
DECLARE $MiddleName NVarChar(12) -- String
SET     $MiddleName = 'updated name'
DECLARE $Gender NVarChar(1) -- String
SET     $Gender = 'M'
DECLARE $ID  -- Int32
SET     $ID = 5

UPDATE
	Person
SET
	FirstName = CAST($FirstName AS VARCHAR),
	LastName = CAST($LastName AS VARCHAR),
	MiddleName = CAST($MiddleName AS VARCHAR),
	Gender = CAST($Gender AS VARCHAR)
WHERE
	Person.PersonID = CAST($ID AS INTEGER)

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
	x.FirstName = CAST($FirstName AS VARCHAR)
LIMIT 1

-- DuckDB
DECLARE $newName NVarChar(18) -- String
SET     $newName = 'InsertColumnFilter'

DELETE FROM
	Person x
WHERE
	x.FirstName = CAST($newName AS VARCHAR)

