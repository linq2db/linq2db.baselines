-- DuckDB
DECLARE $Date  -- Int32
SET     $Date = 1

SELECT
	CAST(t.DateTimeValue + $Date * Interval '1 Year' AS DATE)
FROM
	LinqDataTypes t

