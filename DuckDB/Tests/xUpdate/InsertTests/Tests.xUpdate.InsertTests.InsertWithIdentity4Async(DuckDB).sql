-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4

-- DuckDB
DECLARE $FirstName NVarChar(5) -- String
SET     $FirstName = 'John0'
DECLARE $LastName NVarChar(7) -- String
SET     $LastName = 'Shepard'
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
RETURNING 
	PersonID

-- DuckDB
DECLARE $p NVarChar(5) -- String
SET     $p = 'John0'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = CAST($p AS VARCHAR) AND p.LastName = 'Shepard'
LIMIT 2

-- DuckDB
DECLARE $FirstName NVarChar(5) -- String
SET     $FirstName = 'John1'
DECLARE $LastName NVarChar(7) -- String
SET     $LastName = 'Shepard'
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
RETURNING 
	PersonID

-- DuckDB
DECLARE $p NVarChar(5) -- String
SET     $p = 'John1'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = CAST($p AS VARCHAR) AND p.LastName = 'Shepard'
LIMIT 2

-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4

