-- YDB Ydb
DECLARE $arr Int32
SET     $arr = 3

INSERT INTO ArrayLengthTable
(
	Id,
	`Value`
)
VALUES
(
	1,
	$arr
)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	ArrayLengthTable t1
LIMIT 2

