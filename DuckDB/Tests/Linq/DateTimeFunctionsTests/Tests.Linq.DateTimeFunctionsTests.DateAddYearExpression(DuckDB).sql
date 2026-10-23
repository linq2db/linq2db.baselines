-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 11

SELECT
	CAST(t.DateTimeValue + $Value * Interval '1 Year' AS DATE)
FROM
	LinqDataTypes t

