-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $StringEnum Text(2) -- String
SET     $StringEnum = '14'u

INSERT INTO CreateTableTypes
(
	Id,
	StringEnum
)
VALUES
(
	$Id,
	$StringEnum
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $StringEnum Text(1) -- String
SET     $StringEnum = '4'u

INSERT INTO CreateTableTypes
(
	Id,
	StringEnum
)
VALUES
(
	$Id,
	$StringEnum
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.StringEnum as StringEnum
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

