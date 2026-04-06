-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $DateTimeNullable  -- Object
SET     $DateTimeNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	DateTimeNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($DateTimeNullable AS TIMESTAMP)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $DateTimeNullable NVarChar(26) -- String
SET     $DateTimeNullable = '2018-11-25 01:02:03.000000'

INSERT INTO CreateTableTypes
(
	Id,
	DateTimeNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($DateTimeNullable AS TIMESTAMP)
)

-- DuckDB

SELECT
	t1.Id,
	t1.DateTimeNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

