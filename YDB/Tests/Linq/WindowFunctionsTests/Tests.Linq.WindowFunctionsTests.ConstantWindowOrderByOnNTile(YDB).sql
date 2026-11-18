-- YDB Ydb
SELECT
	t.Id as Id,
	NTILE(4) OVER () as c1
FROM
	WindowFunctionTestEntity t

