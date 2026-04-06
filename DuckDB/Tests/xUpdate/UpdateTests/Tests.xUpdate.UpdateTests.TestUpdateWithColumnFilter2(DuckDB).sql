-- DuckDB
DECLARE $FirstName NVarChar(18) -- String
SET     $FirstName = 'UpdateColumnFilter'
DECLARE $LastName NVarChar(8) -- String
SET     $LastName = 'whatever'
DECLARE $MiddleName  -- Object
SET     $MiddleName = NULL
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
SET     $FirstName = 'UpdateColumnFilter'

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
LIMIT 2

-- DuckDB
DECLARE $FirstName NVarChar(25) -- String
SET     $FirstName = 'UpdateColumnFilterUpdated'
DECLARE $ID  -- Int32
SET     $ID = 5

UPDATE
	Person
SET
	FirstName = CAST($FirstName AS VARCHAR)
WHERE
	Person.PersonID = CAST($ID AS INTEGER)

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 5

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.PersonID = CAST($ID AS INTEGER)
LIMIT 2

-- DuckDB
DECLARE $FirstName NVarChar(25) -- String
SET     $FirstName = 'UpdateColumnFilterUpdated'
DECLARE $LastName NVarChar(25) -- String
SET     $LastName = 'UpdateColumnFilterUpdated'
DECLARE $MiddleName  -- Object
SET     $MiddleName = NULL
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
DECLARE $ID  -- Int32
SET     $ID = 5

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID = CAST($ID AS INTEGER)
LIMIT 2

