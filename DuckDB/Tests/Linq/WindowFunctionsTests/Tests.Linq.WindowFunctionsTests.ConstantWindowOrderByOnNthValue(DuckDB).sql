-- DuckDB
SELECT
	t.Id,
	NTH_VALUE(t.IntValue, 2) OVER ()
FROM
	WindowFunctionTestEntity t

