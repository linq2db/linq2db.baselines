-- YDB Ydb
SELECT
	t.Id as Id,
	NTH_VALUE(t.IntValue = 20, 2l) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as Boolean_1,
	NTH_VALUE(t.IntValue, 2l) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as Value_1
FROM
	WindowFunctionTestEntity t
ORDER BY
	t.Id

