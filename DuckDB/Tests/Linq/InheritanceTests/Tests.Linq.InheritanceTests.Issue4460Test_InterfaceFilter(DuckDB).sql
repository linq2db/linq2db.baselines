-- DuckDB
DECLARE $Code NVarChar(5) -- String
SET     $Code = 'Child'
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'Jane'

INSERT INTO Base
(
	Code,
	Id,
	Name
)
VALUES
(
	CAST($Code AS VARCHAR),
	CAST($Id AS INTEGER),
	CAST($Name AS VARCHAR)
)

-- DuckDB
DECLARE $Code NVarChar(6) -- String
SET     $Code = 'Child2'
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Age  -- Int32
SET     $Age = 10

INSERT INTO Base
(
	Code,
	Id,
	Age
)
VALUES
(
	CAST($Code AS VARCHAR),
	CAST($Id AS INTEGER),
	CAST($Age AS INTEGER)
)

-- DuckDB

SELECT
	e.Code,
	e.Id,
	e.Name,
	e.Age
FROM
	Base e
WHERE
	e.Code <> 'Child' OR e.Code IS NULL

