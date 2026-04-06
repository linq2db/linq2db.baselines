-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $IntEnumNullable  -- Object
SET     $IntEnumNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	IntEnumNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($IntEnumNullable AS INTEGER)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $IntEnumNullable  -- Int32
SET     $IntEnumNullable = 60

INSERT INTO CreateTableTypes
(
	Id,
	IntEnumNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($IntEnumNullable AS INTEGER)
)

-- DuckDB

SELECT
	t1.Id,
	t1.IntEnumNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

