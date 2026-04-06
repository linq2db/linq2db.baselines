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
DECLARE $Name_MiddleName NVarChar -- String
SET     $Name_MiddleName = ''
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

SELECT
	p.PersonID,
	p.FirstName,
	p.MiddleName,
	p.LastName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID > 4
LIMIT 2

-- DuckDB

DELETE FROM
	Person t
WHERE
	t.PersonID > 4

