-- YDB Ydb

SELECT
	t.Id as Id,
	AVG(CASE
		WHEN t.CategoryId = 1 THEN t.DoubleValue
		ELSE NULL
	END) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c1
FROM
	WindowFunctionTestEntity t

