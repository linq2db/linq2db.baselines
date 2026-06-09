-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Boolean Bool -- Boolean
SET     $Boolean = false

INSERT INTO CreateTableTypes
(
	Id,
	`Boolean`
)
VALUES
(
	$Id,
	$Boolean
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Boolean Bool -- Boolean
SET     $Boolean = true

INSERT INTO CreateTableTypes
(
	Id,
	`Boolean`
)
VALUES
(
	$Id,
	$Boolean
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Boolean` as Boolean_1
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

