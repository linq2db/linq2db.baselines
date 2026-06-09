-- YDB Ydb
DECLARE $value Int32
SET     $value = 123

INSERT INTO TableWithIdentity
(
	`Value`
)
VALUES
(
	$value
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	TableWithIdentity t1
LIMIT 2

