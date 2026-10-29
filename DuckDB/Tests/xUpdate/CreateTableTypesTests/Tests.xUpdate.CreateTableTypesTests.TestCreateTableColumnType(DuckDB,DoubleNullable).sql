-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $DoubleNullable DOUBLE -- Double
SET     $DoubleNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	DoubleNullable
)
VALUES
(
	$Id,
	$DoubleNullable
)

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $DoubleNullable DOUBLE -- Double
SET     $DoubleNullable = 4.1299999999999999

INSERT INTO CreateTableTypes
(
	Id,
	DoubleNullable
)
VALUES
(
	$Id,
	$DoubleNullable
)

-- DuckDB
SELECT
	t1.Id,
	t1.DoubleNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

