-- YDB Ydb
SELECT
	t.Id as Id,
	FIRST_VALUE(t.IntValue = 20) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as Boolean_1,
	FIRST_VALUE(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id) as Value_1
FROM
	WindowFunctionTestEntity t
ORDER BY
	t.Id

