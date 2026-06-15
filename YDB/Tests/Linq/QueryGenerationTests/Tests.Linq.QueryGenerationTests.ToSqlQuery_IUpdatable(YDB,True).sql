-- YDB Ydb
DECLARE $Value Int32
SET     $Value = 1

INSERT INTO TableWithIdentity
(
	`Value`
)
VALUES
(
	$Value
)

-- YDB Ydb

UPDATE
	TableWithIdentity
SET
	`Value` = 123

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	TableWithIdentity t1
LIMIT 2

