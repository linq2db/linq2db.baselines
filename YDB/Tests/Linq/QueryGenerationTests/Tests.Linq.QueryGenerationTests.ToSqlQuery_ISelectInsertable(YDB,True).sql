-- YDB Ydb
DECLARE $Value Int32
SET     $Value = 1

INSERT INTO TableWithIdentitySrc
(
	`Value`
)
VALUES
(
	$Value
)

-- YDB Ydb

INSERT INTO TableWithIdentity
(
	`Value`
)
SELECT
	t1.`Value` + 123 as `Value`
FROM
	TableWithIdentitySrc t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	TableWithIdentity t1

