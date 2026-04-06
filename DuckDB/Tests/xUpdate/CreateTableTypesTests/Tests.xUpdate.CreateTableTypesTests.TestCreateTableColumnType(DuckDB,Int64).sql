-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Int64  -- Int64
SET     $Int64 = 0

INSERT INTO CreateTableTypes
(
	Id,
	Int64
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Int64 AS BIGINT)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Int64  -- Int64
SET     $Int64 = 3

INSERT INTO CreateTableTypes
(
	Id,
	Int64
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Int64 AS BIGINT)
)

-- DuckDB

SELECT
	t1.Id,
	t1.Int64
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

