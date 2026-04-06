-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 11

SELECT
	CAST(t.DateTimeValue + CAST(CAST($Value AS INTEGER) * Interval '1 Year' AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

