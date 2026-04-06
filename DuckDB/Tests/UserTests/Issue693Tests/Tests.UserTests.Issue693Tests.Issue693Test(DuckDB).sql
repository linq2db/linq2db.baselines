-- DuckDB
DECLARE $Gender NVarChar(1) -- String
SET     $Gender = 'M'
DECLARE $FirstName NVarChar(1) -- String
SET     $FirstName = 'a'
DECLARE $MiddleName NVarChar(1) -- String
SET     $MiddleName = 'A'
DECLARE $LastName NVarChar(1) -- String
SET     $LastName = 'b'

INSERT INTO Person
(
	Gender,
	FirstName,
	MiddleName,
	LastName
)
VALUES
(
	CAST($Gender AS VARCHAR),
	CAST($FirstName AS VARCHAR),
	CAST($MiddleName AS VARCHAR),
	CAST($LastName AS VARCHAR)
)
RETURNING 
	PersonID

-- DuckDB
DECLARE $Gender NVarChar(1) -- String
SET     $Gender = 'M'
DECLARE $FirstName NVarChar(1) -- String
SET     $FirstName = 'c'
DECLARE $MiddleName  -- Object
SET     $MiddleName = NULL
DECLARE $LastName NVarChar(1) -- String
SET     $LastName = 'd'

INSERT INTO Person
(
	Gender,
	FirstName,
	MiddleName,
	LastName
)
VALUES
(
	CAST($Gender AS VARCHAR),
	CAST($FirstName AS VARCHAR),
	CAST($MiddleName AS VARCHAR),
	CAST($LastName AS VARCHAR)
)
RETURNING 
	PersonID

-- DuckDB
DECLARE $id1  -- Int32
SET     $id1 = 5

SELECT
	t1.PersonID,
	t1.Gender,
	t1.FirstName,
	t1.MiddleName,
	t1.LastName
FROM
	Person t1
WHERE
	t1.PersonID = CAST($id1 AS INTEGER)
LIMIT 1

-- DuckDB
DECLARE $id2  -- Int32
SET     $id2 = 6

SELECT
	t1.PersonID,
	t1.Gender,
	t1.FirstName,
	t1.MiddleName,
	t1.LastName
FROM
	Person t1
WHERE
	t1.PersonID = CAST($id2 AS INTEGER)
LIMIT 1

