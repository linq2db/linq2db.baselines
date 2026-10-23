-- DuckDB
SELECT
	t.Id,
	t.CategoryId,
	SUM(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY 1 RANGE BETWEEN 1 PRECEDING AND 2 FOLLOWING)
FROM
	WindowFunctionTestEntity t

