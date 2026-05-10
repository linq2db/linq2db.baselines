-- DuckDB
DECLARE $Minute  -- Int32
SET     $Minute = -8

SELECT
	EXTRACT(minute FROM (t.DateTimeValue + $Minute * Interval '1 Minute'))
FROM
	LinqDataTypes t

