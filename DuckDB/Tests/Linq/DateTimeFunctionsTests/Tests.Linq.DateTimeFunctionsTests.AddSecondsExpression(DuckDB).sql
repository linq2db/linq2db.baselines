-- DuckDB
DECLARE $Second  -- Int32
SET     $Second = -35

SELECT
	EXTRACT(second FROM (t.DateTimeValue + $Second * Interval '1 Second'))
FROM
	LinqDataTypes t

