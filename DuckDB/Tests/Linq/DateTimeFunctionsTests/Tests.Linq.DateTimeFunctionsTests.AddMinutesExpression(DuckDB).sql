-- DuckDB
DECLARE $Minute  -- Int32
SET     $Minute = -8

SELECT
	EXTRACT(minute FROM (t.DateTimeValue + CAST(CAST($Minute AS INTEGER) * Interval '1 Minute' AS INTERVAL)))
FROM
	LinqDataTypes t

