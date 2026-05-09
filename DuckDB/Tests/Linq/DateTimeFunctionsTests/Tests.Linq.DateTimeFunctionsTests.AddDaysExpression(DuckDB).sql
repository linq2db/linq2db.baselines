-- DuckDB
DECLARE $Date  -- Int32
SET     $Date = 5

SELECT
	CAST(t.DateTimeValue + $Date * Interval '1 Day' AS DATE)
FROM
	LinqDataTypes t

