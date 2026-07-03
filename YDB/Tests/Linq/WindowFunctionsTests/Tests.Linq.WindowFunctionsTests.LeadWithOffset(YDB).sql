-- YDB Ydb

SELECT
	t.Id as Id,
	LEAD(t.IntValue, 2) OVER (ORDER BY t.Id) as c1
FROM
	WindowFunctionTestEntity t

