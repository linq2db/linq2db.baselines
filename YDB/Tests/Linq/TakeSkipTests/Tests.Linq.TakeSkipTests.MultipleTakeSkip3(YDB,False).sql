-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	TakeSkipClass t1
ORDER BY
	t1.`Value`
LIMIT 1 OFFSET 3 

