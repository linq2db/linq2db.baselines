-- YDB Ydb
DECLARE $take Int32
SET     $take = 1
DECLARE $skip Int32
SET     $skip = 3

SELECT
	t1.Id as Id,
	t1.`Value` as Value_1
FROM
	TakeSkipClass t1
ORDER BY
	t1.`Value`
LIMIT $take OFFSET $skip 

