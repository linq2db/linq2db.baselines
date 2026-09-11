-- YDB Ydb
SELECT
	t.Id as Id,
	ROW_NUMBER() OVER () as c1,
	ROW_NUMBER() OVER (ORDER BY t.Id) as c2,
	ROW_NUMBER() OVER (ORDER BY t.Id) as c3
FROM
	WindowFunctionTestEntity t

