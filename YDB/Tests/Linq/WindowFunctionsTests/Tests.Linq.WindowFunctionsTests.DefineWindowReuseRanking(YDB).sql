-- YDB Ydb
SELECT
	ROW_NUMBER() OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c1,
	RANK() OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c2,
	SUM(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c3,
	AVG(t.DoubleValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c4,
	MIN(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c5,
	MAX(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c6,
	COUNT(*) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c7,
	LEAD(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c8,
	LAG(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c9
FROM
	WindowFunctionTestEntity t

