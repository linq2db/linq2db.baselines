-- DuckDB
DECLARE $FirstName NVarChar(8) -- String
SET     $FirstName = 'Update14'
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
DECLARE $name  -- Int32
SET     $name = 8
DECLARE $idx  -- Int32
SET     $idx = 4

UPDATE
	Person
SET
	LastName = CAST(CAST($name AS INTEGER) + CAST($idx AS INTEGER) AS VARCHAR)
WHERE
	Person.FirstName LIKE 'Update14%' ESCAPE '~'

-- DuckDB

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Update14%' ESCAPE '~'

