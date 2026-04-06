-- DuckDB

SELECT
	MAX(t1.PersonID)
FROM
	Person t1

-- DuckDB
DECLARE $Gender NVarChar(1) -- String
SET     $Gender = 'M'
DECLARE $Name_FirstName NVarChar(2) -- String
SET     $Name_FirstName = 'fn'
DECLARE $Name_MiddleName  -- Object
SET     $Name_MiddleName = NULL
DECLARE $Name_LastName NVarChar(2) -- String
SET     $Name_LastName = 'ln'

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
	CAST($Name_FirstName AS VARCHAR),
	CAST($Name_MiddleName AS VARCHAR),
	CAST($Name_LastName AS VARCHAR)
)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 4

SELECT
	p2.PersonID,
	p2.Gender,
	p2.FirstName,
	p2.MiddleName,
	p2.LastName
FROM
	Person p2
WHERE
	p2.PersonID > CAST($id AS INTEGER) OR p2.PersonID = 0
LIMIT 2

