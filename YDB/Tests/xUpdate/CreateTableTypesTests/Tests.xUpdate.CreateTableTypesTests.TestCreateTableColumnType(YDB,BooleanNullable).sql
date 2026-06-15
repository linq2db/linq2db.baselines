-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $BooleanNullable Bool -- Boolean
SET     $BooleanNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	BooleanNullable
)
VALUES
(
	$Id,
	$BooleanNullable
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $BooleanNullable Bool -- Boolean
SET     $BooleanNullable = true

INSERT INTO CreateTableTypes
(
	Id,
	BooleanNullable
)
VALUES
(
	$Id,
	$BooleanNullable
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.BooleanNullable as BooleanNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

