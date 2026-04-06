-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4

-- DuckDB
DECLARE $FirstName NVarChar(4) -- String
SET     $FirstName = 'John'
DECLARE $LastName NVarChar(7) -- String
SET     $LastName = 'Shepard'
DECLARE $Gender NVarChar(1) -- String
SET     $Gender = 'M'

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	CAST($FirstName AS VARCHAR),
	CAST($LastName AS VARCHAR),
	CAST($Gender AS VARCHAR)
)
RETURNING 
	PersonID

-- DuckDB

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = 'John' AND p.LastName = 'Shepard'
LIMIT 2

-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4

