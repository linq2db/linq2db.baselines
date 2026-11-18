-- YDB Ydb
SELECT
	t.Id as Id,
	COUNT(t.IntValue = 20) OVER (PARTITION BY t.CategoryId) as CountBoolean,
	COUNT(t.IntValue) OVER (PARTITION BY t.CategoryId) as CountNotNull
FROM
	WindowFunctionTestEntity t
ORDER BY
	t.Id

