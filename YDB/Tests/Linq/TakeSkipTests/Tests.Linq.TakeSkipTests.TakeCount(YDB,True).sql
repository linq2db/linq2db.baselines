-- YDB Ydb
DECLARE $take Int32
SET     $take = 5

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			1 as c1
		FROM
			Child t1
		LIMIT $take
	) t2

