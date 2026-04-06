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
RETURNING 
	PersonID

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

