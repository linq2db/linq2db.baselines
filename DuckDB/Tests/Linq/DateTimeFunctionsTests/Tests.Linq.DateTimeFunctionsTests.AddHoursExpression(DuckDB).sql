-- DuckDB
DECLARE $Hour  -- Int32
SET     $Hour = 22

SELECT
	EXTRACT(hour FROM (t.DateTimeValue + $Hour * Interval '1 Hour'))
FROM
	LinqDataTypes t

