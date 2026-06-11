-- DuckDB

SELECT
	t.Id,
	MAX(DISTINCT t.IntValue) OVER (PARTITION BY t.CategoryId)
FROM
	WindowFunctionTestEntity t

