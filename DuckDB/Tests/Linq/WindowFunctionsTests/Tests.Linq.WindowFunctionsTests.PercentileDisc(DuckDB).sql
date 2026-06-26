-- DuckDB

SELECT
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY t1.IntValue)
FROM
	WindowFunctionTestEntity t1

-- DuckDB

SELECT
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY t1.IntValue)
FROM
	WindowFunctionTestEntity t1

