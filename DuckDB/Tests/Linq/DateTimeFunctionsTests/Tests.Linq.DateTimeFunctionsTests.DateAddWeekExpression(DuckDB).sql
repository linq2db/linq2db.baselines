-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = -1

SELECT
	CAST(t.DateTimeValue + CAST((CAST($Value AS INTEGER) * Interval '1 Day') * 7 AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

