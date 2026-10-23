-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 2

SELECT
	CAST(t.DateTimeValue + $Value * Interval '1 Month' AS DATE)
FROM
	LinqDataTypes t

