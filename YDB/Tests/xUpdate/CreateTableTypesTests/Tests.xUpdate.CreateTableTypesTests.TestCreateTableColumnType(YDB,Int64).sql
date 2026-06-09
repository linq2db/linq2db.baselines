-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Int64 Int64
SET     $Int64 = 0l

INSERT INTO CreateTableTypes
(
	Id,
	Int64
)
VALUES
(
	$Id,
	$Int64
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Int64 Int64
SET     $Int64 = 3l

INSERT INTO CreateTableTypes
(
	Id,
	Int64
)
VALUES
(
	$Id,
	$Int64
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Int64 as Int64
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

