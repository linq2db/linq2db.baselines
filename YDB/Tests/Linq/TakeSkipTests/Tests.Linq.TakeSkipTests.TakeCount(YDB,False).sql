-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			1 as c1
		FROM
			Child t1
		LIMIT 5
	) t2

