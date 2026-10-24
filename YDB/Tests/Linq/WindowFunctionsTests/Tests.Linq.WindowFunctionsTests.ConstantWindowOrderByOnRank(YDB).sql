-- YDB Ydb
SELECT
	t.Id as Id,
	RANK() OVER () as c1
FROM
	WindowFunctionTestEntity t

