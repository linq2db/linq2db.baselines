-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $DateTimeNullable  -- DateTime2
SET     $DateTimeNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	DateTimeNullable
)
VALUES
(
	$Id,
	$DateTimeNullable
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $DateTimeNullable  -- DateTime2
SET     $DateTimeNullable = '2018-11-25 01:02:03.000000'::TIMESTAMP

INSERT INTO CreateTableTypes
(
	Id,
	DateTimeNullable
)
VALUES
(
	$Id,
	$DateTimeNullable
)

-- DuckDB

SELECT
	t1.Id,
	t1.DateTimeNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

