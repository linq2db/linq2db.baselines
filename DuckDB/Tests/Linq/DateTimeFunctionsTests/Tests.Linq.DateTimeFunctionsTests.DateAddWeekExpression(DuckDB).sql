-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = -1

SELECT
	CAST(t.DateTimeValue + ($Value * Interval '1 Day') * 7 AS DATE)
FROM
	LinqDataTypes t

