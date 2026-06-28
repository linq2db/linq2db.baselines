-- YDB Ydb

SELECT
	t.Id as Id,
	Unwrap(CAST(t.IntValue AS Double)) / SUM(t.IntValue) OVER (PARTITION BY t.CategoryId) as RatioToReport
FROM
	WindowFunctionTestEntity t

