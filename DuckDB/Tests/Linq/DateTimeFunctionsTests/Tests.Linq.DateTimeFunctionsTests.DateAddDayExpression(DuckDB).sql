-- DuckDB
DECLARE $Value INTEGER -- Int32
SET     $Value = 5

SELECT
	CAST(t.DateTimeValue + $Value * Interval '1 Day' AS DATE)
FROM
	LinqDataTypes t

