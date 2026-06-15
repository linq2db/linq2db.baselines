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
DECLARE $addition Int32
SET     $addition = 123

INSERT INTO TableWithIdentity
(
	Id,
	`Value`
)
SELECT
	345 as Id,
	t1.`Value` + $addition as `Value`
FROM
	TableWithIdentitySrc t1

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	TableWithIdentity t1

