-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StringEnumNullable Text -- String
SET     $StringEnumNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	StringEnumNullable
)
VALUES
(
	$Id,
	$StringEnumNullable
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $StringEnumNullable Text(2) -- String
SET     $StringEnumNullable = '40'u

INSERT INTO CreateTableTypes
(
	Id,
	StringEnumNullable
)
VALUES
(
	$Id,
	$StringEnumNullable
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.StringEnumNullable as StringEnumNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

