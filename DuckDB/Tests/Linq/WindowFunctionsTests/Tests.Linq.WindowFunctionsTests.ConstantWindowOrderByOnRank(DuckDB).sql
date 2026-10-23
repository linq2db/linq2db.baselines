-- DuckDB
SELECT
	t.Id,
	RANK() OVER ()
FROM
	WindowFunctionTestEntity t

