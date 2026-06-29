-- YDB Ydb

SELECT
	t.Id as Id,
	Unwrap(CAST(t.IntValue AS Double)) / CASE
		WHEN Unwrap(CAST(SUM(t.IntValue) OVER (PARTITION BY t.CategoryId) AS Double)) = 0
			THEN NULL
		ELSE Unwrap(CAST(SUM(t.IntValue) OVER (PARTITION BY t.CategoryId) AS Double))
	END as RatioToReport
FROM
	WindowFunctionTestEntity t

