-- DuckDB
DECLARE $FirstName NVarChar(9) -- String
SET     $FirstName = 'FirstName'
DECLARE $Gender NVarChar(1) -- String
SET     $Gender = 'F'

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	CAST($FirstName AS VARCHAR),
	'LastName',
	CAST($Gender AS VARCHAR)
)

