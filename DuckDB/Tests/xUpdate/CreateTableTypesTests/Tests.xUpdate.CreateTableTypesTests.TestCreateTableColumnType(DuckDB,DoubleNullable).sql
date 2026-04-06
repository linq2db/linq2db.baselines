-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $DoubleNullable  -- Object
SET     $DoubleNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	DoubleNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($DoubleNullable AS DOUBLE)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $DoubleNullable NVarChar(18) -- String
SET     $DoubleNullable = '4.1299999999999999'

INSERT INTO CreateTableTypes
(
	Id,
	DoubleNullable
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($DoubleNullable AS DOUBLE)
)

-- DuckDB

SELECT
	t1.Id,
	t1.DoubleNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

