-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 5

SELECT
	EXTRACT(minute FROM (t.DateTimeValue + $Value * Interval '1 Minute'))
FROM
	LinqDataTypes t

