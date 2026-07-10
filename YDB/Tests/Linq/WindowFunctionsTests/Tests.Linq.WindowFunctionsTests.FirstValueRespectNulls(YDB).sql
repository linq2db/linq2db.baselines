-- YDB Ydb
SELECT
	t.Id as Id,
	FIRST_VALUE(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c1
FROM
	WindowFunctionTestEntity t

