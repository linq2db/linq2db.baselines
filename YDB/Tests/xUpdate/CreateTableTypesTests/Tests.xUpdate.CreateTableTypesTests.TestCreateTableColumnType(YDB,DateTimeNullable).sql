-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $DateTimeNullable Timestamp -- DateTime2
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

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $DateTimeNullable Timestamp -- DateTime2
SET     $DateTimeNullable = Timestamp('2018-11-25T01:02:03.000000Z')

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

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.DateTimeNullable as DateTimeNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

