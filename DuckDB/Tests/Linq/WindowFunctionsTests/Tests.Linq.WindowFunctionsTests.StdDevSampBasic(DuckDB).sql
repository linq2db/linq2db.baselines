-- DuckDB
SELECT
	t.Id,
	STDDEV_SAMP(t.IntValue) OVER (PARTITION BY t.CategoryId ORDER BY t.Id)
FROM
	WindowFunctionTestEntity t

