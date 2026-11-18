-- YDB Ydb
SELECT
	t.Id as Id,
	AVG(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.IntValue = 20, t.Id) as c1,
	AVG(t.IntValue) OVER (PARTITION BY t.IntValue = 20 ORDER BY t.Id) as c2,
	AVG(t.IntValue) OVER (PARTITION BY t.NullableIntValue IS NOT NULL ORDER BY t.Id) as c3
FROM
	WindowFunctionTestEntity t

