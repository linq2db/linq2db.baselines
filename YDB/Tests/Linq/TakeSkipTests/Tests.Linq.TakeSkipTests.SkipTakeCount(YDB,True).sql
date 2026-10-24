-- YDB Ydb
DECLARE $take Int32
SET     $take = 5
DECLARE $skip Int32
SET     $skip = 2

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			1 as c1
		FROM
			Child t1
		LIMIT $take OFFSET $skip 
	) t2

