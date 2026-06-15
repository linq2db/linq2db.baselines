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
DECLARE $newValue Int32
SET     $newValue = 123

UPDATE
	TableWithIdentity
SET
	`Value` = $newValue

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	TableWithIdentity t1
LIMIT 2

