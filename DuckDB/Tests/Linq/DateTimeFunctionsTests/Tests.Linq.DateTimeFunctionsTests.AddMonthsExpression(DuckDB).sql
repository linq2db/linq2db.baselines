-- DuckDB
DECLARE $Date  -- Int32
SET     $Date = -2

SELECT
	CAST(t.DateTimeValue + $Date * Interval '1 Month' AS DATE)
FROM
	LinqDataTypes t

