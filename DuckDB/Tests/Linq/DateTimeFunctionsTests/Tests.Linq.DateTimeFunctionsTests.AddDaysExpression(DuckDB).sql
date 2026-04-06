-- DuckDB
DECLARE $Date  -- Int32
SET     $Date = 5

SELECT
	CAST(t.DateTimeValue + CAST(CAST($Date AS INTEGER) * Interval '1 Day' AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

