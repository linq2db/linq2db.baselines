-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 2

SELECT
	CAST(t.DateTimeValue + CAST(CAST($Value AS INTEGER) * Interval '1 Month' AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

