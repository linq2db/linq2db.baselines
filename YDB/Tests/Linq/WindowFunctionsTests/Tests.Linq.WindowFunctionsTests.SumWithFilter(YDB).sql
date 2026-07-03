-- YDB Ydb

SELECT
	t.Id as Id,
	SUM(CASE
		WHEN t.CategoryId = 1 THEN t.IntValue
		ELSE NULL
	END) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c1
FROM
	WindowFunctionTestEntity t

