-- DuckDB
DECLARE $FirstName NVarChar(3) -- String
SET     $FirstName = '123'
DECLARE $LastName NVarChar(3) -- String
SET     $LastName = '456'
DECLARE $MiddleName NVarChar(3) -- String
SET     $MiddleName = '789'
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
RETURNING 
	PersonID

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 5

SELECT
	t.PersonID,
	t.FirstName,
	t.LastName,
	t.MiddleName,
	t.Gender
FROM
	Person t
WHERE
	t.PersonID = CAST($id AS INTEGER)
LIMIT 1

