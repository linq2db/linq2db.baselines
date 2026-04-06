-- DuckDB
DECLARE $Date  -- Int32
SET     $Date = -2

SELECT
	CAST(t.DateTimeValue + CAST(CAST($Date AS INTEGER) * Interval '1 Month' AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

