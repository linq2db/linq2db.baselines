-- YDB Ydb
SELECT
	t.Id as Id,
	LAG(t.IntValue = 20) OVER (ORDER BY t.Id) as Boolean_1,
	LAG(t.IntValue) OVER (ORDER BY t.Id) as Value_1
FROM
	WindowFunctionTestEntity t
ORDER BY
	t.Id

