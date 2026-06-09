-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $DoubleNullable Double
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

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $DoubleNullable Double
SET     $DoubleNullable = Double('4.1299999999999999')

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

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.DoubleNullable as DoubleNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

