-- YDB Ydb
SELECT
	COUNT(CASE
		WHEN t.IntValue > 20 THEN 1
		ELSE NULL
	END) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c1
FROM
	WindowFunctionTestEntity t

