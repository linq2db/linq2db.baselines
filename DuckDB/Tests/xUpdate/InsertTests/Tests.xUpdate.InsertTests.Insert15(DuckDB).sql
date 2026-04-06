-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Insert15%' ESCAPE '~'

-- DuckDB
DECLARE $Gender NVarChar(1) -- String
SET     $Gender = 'M'
DECLARE $Name_FirstName NVarChar(8) -- String
SET     $Name_FirstName = 'Insert15'
DECLARE $Name_MiddleName  -- Object
SET     $Name_MiddleName = NULL
DECLARE $Name_LastName NVarChar(8) -- String
SET     $Name_LastName = 'Insert15'

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
	COUNT(*)
FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Insert15%' ESCAPE '~'

-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Insert15%' ESCAPE '~'

