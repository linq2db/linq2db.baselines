-- YDB Ydb

SELECT
	t.Id as Id,
	NTH_VALUE(t.IntValue, 2l) IGNORE NULLS OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as c1
FROM
	WindowFunctionTestEntity t

