-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 1

SELECT
	EXTRACT(hour FROM (t.DateTimeValue + CAST(CAST($Value AS INTEGER) * Interval '1 Hour' AS INTERVAL)))
FROM
	LinqDataTypes t

