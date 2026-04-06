-- DuckDB
DECLARE $FirstName NVarChar(4) -- String
SET     $FirstName = '擊敗奴隸'
DECLARE $LastName NVarChar(9) -- String
SET     $LastName = 'Юникодкин'
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

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = '擊敗奴隸' AND p.LastName = 'Юникодкин'
LIMIT 2

