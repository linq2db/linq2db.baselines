-- DuckDB

SELECT
	t.Id,
	LEAD(t.IntValue IGNORE NULLS) OVER (PARTITION BY t.CategoryId ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

