-- DuckDB
DECLARE $FirstName NVarChar(6) -- String
SET     $FirstName = 'Steven'
DECLARE $LastName NVarChar(4) -- String
SET     $LastName = 'King'
DECLARE $MiddleName  -- Object
SET     $MiddleName = NULL
DECLARE $Gender NVarChar(1) -- String
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
	CAST($FirstName AS VARCHAR),
	CAST($LastName AS VARCHAR),
	CAST($MiddleName AS VARCHAR),
	CAST($Gender AS VARCHAR)
)

-- DuckDB

SELECT
	COUNT(*)
FROM
	xxPerson t1

-- DuckDB

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	xxPerson t1
LIMIT 2

-- DuckDB
DECLARE $FirstName NVarChar(6) -- String
SET     $FirstName = 'Steven'
DECLARE $LastName NVarChar(4) -- String
SET     $LastName = 'King'
DECLARE $MiddleName NVarChar(4) -- String
SET     $MiddleName = 'None'
DECLARE $Gender NVarChar(1) -- String
SET     $Gender = 'M'
DECLARE $ID  -- Int32
SET     $ID = 1

UPDATE
	xxPerson
SET
	FirstName = CAST($FirstName AS VARCHAR),
	LastName = CAST($LastName AS VARCHAR),
	MiddleName = CAST($MiddleName AS VARCHAR),
	Gender = CAST($Gender AS VARCHAR)
WHERE
	xxPerson.PersonID = CAST($ID AS INTEGER)

-- DuckDB

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	xxPerson t1
LIMIT 2

