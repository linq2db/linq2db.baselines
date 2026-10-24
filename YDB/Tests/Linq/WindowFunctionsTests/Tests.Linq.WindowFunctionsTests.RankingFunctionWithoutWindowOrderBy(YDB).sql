-- YDB Ydb
SELECT
	t.Id as Id,
	t.CategoryId as CategoryId,
	ROW_NUMBER() OVER (PARTITION BY t.CategoryId) as c1
FROM
	WindowFunctionTestEntity t

