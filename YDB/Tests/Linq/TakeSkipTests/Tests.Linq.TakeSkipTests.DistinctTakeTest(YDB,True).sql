-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT DISTINCT
	r.`Value` as Value_1
FROM
	TakeSkipClass r
LIMIT $take

