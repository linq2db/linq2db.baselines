-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 1

SELECT
	EXTRACT(hour FROM (t.DateTimeValue + $Value * Interval '1 Hour'))
FROM
	LinqDataTypes t

