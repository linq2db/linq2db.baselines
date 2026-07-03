-- YDB Ydb

SELECT
	COUNT(*) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c1,
	COUNT(*) OVER (ORDER BY t.Id) as c2
FROM
	WindowFunctionTestEntity t

