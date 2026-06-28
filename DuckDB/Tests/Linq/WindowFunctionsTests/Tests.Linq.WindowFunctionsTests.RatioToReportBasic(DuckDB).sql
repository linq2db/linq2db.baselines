-- DuckDB

SELECT
	t.Id,
	CAST(t.IntValue AS DOUBLE) / SUM(t.IntValue) OVER (PARTITION BY t.CategoryId)
FROM
	WindowFunctionTestEntity t

