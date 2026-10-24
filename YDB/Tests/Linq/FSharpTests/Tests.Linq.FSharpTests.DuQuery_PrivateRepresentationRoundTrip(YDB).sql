-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Key Int32
SET     $Key = 7

INSERT INTO PrivateDuRow
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
	x.`Key` as Key_1
FROM
	PrivateDuRow x
ORDER BY
	x.Id

