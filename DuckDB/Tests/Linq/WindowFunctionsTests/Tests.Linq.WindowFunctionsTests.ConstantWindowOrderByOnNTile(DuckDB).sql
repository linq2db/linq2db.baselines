-- DuckDB
SELECT
	t.Id,
	NTILE(4) OVER ()
FROM
	WindowFunctionTestEntity t

