-- DuckDB
DECLARE $Date  -- Int32
SET     $Date = 1

SELECT
	CAST(t.DateTimeValue + CAST(CAST($Date AS INTEGER) * Interval '1 Year' AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

