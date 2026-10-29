-- DuckDB
DECLARE $Value INTEGER -- Int32
SET     $Value = -1

SELECT
	CAST(t.DateTimeValue + ($Value * Interval '1 Month') * 3 AS DATE)
FROM
	LinqDataTypes t

