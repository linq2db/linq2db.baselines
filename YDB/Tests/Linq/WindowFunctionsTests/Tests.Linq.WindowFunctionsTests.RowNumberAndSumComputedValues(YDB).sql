-- YDB Ydb
SELECT
	t.Id as Id,
	ROW_NUMBER() OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c1,
	SUM(t.IntValue) OVER (PARTITION BY t.CategoryId) as c2
FROM
	WindowFunctionTestEntity t

