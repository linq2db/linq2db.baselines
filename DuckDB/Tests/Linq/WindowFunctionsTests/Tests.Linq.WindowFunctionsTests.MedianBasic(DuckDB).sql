-- DuckDB
SELECT
	t.Id,
	MEDIAN(t.IntValue) OVER (PARTITION BY t.CategoryId)
FROM
	WindowFunctionTestEntity t

