-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $BooleanNullable  -- Object
SET     $BooleanNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	BooleanNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($BooleanNullable AS BOOLEAN)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $BooleanNullable  -- Boolean
SET     $BooleanNullable = True

INSERT INTO CreateTableTypes
(
	Id,
	BooleanNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($BooleanNullable AS BOOLEAN)
)

-- DuckDB

SELECT
	t1.Id,
	t1.BooleanNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

