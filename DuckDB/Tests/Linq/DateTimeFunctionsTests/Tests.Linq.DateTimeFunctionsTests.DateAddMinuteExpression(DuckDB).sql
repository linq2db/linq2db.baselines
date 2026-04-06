-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 5

SELECT
	EXTRACT(minute FROM (t.DateTimeValue + CAST(CAST($Value AS INTEGER) * Interval '1 Minute' AS INTERVAL)))
FROM
	LinqDataTypes t

