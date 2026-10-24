-- YDB Ydb
SELECT
	t.Id as Id,
	ROW_NUMBER() OVER () as c1
FROM
	WindowFunctionTestEntity t

