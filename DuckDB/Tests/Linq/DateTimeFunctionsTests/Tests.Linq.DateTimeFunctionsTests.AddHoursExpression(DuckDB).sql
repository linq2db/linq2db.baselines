-- DuckDB
DECLARE $Hour  -- Int32
SET     $Hour = 22

SELECT
	EXTRACT(hour FROM (t.DateTimeValue + CAST(CAST($Hour AS INTEGER) * Interval '1 Hour' AS INTERVAL)))
FROM
	LinqDataTypes t

