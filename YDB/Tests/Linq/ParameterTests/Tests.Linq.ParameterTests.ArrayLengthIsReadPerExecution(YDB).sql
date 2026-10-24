-- YDB Ydb
DECLARE $arr Int32
SET     $arr = 1

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	ArrayLengthTable t
WHERE
	t.Id = $arr
LIMIT 2

-- YDB Ydb
DECLARE $arr Int32
SET     $arr = 2

SELECT
	t.Id as Id,
	t.`Value` as Value_1
FROM
	ArrayLengthTable t
WHERE
	t.Id = $arr
LIMIT 2

