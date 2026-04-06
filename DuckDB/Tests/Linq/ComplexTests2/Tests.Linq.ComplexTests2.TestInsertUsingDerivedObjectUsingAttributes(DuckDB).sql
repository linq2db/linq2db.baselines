-- DuckDB
DECLARE $FirstName NVarChar(21) -- String
SET     $FirstName = 'test_inherited_insert'
DECLARE $LastName NVarChar(4) -- String
SET     $LastName = 'test'
DECLARE $MiddleName NVarChar(4) -- String
SET     $MiddleName = 'test'
DECLARE $Gender NVarChar(1) -- String
SET     $Gender = 'U'

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
RETURNING 
	PersonID

-- DuckDB

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.FirstName = 'test_inherited_insert'
LIMIT 1

-- DuckDB
DECLARE $FirstName NVarChar(21) -- String
SET     $FirstName = 'test_inherited_insert'
DECLARE $LastName NVarChar(4) -- String
SET     $LastName = 'test'
DECLARE $MiddleName NVarChar(4) -- String
SET     $MiddleName = 'test'
DECLARE $Gender NVarChar(1) -- String
SET     $Gender = 'U'
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

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.FirstName = 'test_inherited_insert'
LIMIT 1

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 5

DELETE FROM
	Person t1
WHERE
	t1.PersonID = CAST($ID AS INTEGER)

