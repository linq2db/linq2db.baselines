-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Key Int32
SET     $Key = 10

INSERT INTO DuOptRow
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
SET     $Key = NULL

INSERT INTO DuOptRow
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
SELECT
	x.`Key` as Value_1
FROM
	DuOptRow x
WHERE
	x.`Key` IS NOT NULL
ORDER BY
	x.Id

