-- YDB Ydb
SELECT
	t.Id as Id,
	NTH_VALUE(t.IntValue, 2l) OVER () as c1
FROM
	WindowFunctionTestEntity t

