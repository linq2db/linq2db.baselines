-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = -1

SELECT
	CAST(t.DateTimeValue + CAST((CAST($Value AS INTEGER) * Interval '1 Month') * 3 AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

