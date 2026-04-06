-- DuckDB
DECLARE $Second  -- Int32
SET     $Second = -35

SELECT
	EXTRACT(second FROM (t.DateTimeValue + CAST(CAST($Second AS INTEGER) * Interval '1 Second' AS INTERVAL)))
FROM
	LinqDataTypes t

