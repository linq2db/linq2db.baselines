-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $StringEnumNullable  -- Object
SET     $StringEnumNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	StringEnumNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($StringEnumNullable AS VARCHAR)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $StringEnumNullable NVarChar(2) -- String
SET     $StringEnumNullable = '40'

INSERT INTO CreateTableTypes
(
	Id,
	StringEnumNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($StringEnumNullable AS VARCHAR)
)

-- DuckDB

SELECT
	t1.Id,
	t1.StringEnumNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

