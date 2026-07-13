-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Key Int32
SET     $Key = 10

INSERT INTO DuRow
(
	Id,
	`Key`
)
VALUES
(
	$Id,
	$Key
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $Key Int32
SET     $Key = 20

INSERT INTO DuRow
(
	Id,
	`Key`
)
VALUES
(
	$Id,
	$Key
)

-- YDB Ydb
DECLARE $Key Int32
SET     $Key = 10

SELECT
	x.Id as Id,
	x.`Key` as Key_1
FROM
	DuRow x
WHERE
	x.`Key` = $Key

