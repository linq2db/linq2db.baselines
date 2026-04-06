-- DuckDB
DECLARE $Code NVarChar(5) -- String
SET     $Code = 'Child'
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(4) -- String
SET     $Name = 'Jane'
DECLARE $IsMale  -- Boolean
SET     $IsMale = False

INSERT INTO Base
(
	Code,
	Id,
	Name,
	IsMale
)
VALUES
(
	CAST($Code AS VARCHAR),
	CAST($Id AS INTEGER),
	CAST($Name AS VARCHAR),
	CAST($IsMale AS BOOLEAN)
)

-- DuckDB
DECLARE $Code NVarChar(6) -- String
SET     $Code = 'Child2'
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Name  -- Object
SET     $Name = NULL
DECLARE $Age  -- Int32
SET     $Age = 10

INSERT INTO Base
(
	Code,
	Id,
	Name,
	Age
)
VALUES
(
	CAST($Code AS VARCHAR),
	CAST($Id AS INTEGER),
	CAST($Name AS VARCHAR),
	CAST($Age AS INTEGER)
)

-- DuckDB

SELECT
	e.Code,
	e.Id,
	e.Name,
	e.IsMale,
	e.Age
FROM
	Base e
WHERE
	CASE
		WHEN e.Code = 'Child2' OR e.Code = 'Child' OR e.Code = 'BaseChild'
			THEN e.Id <> 0
		ELSE e.Id = 0
	END
ORDER BY
	e.Id

