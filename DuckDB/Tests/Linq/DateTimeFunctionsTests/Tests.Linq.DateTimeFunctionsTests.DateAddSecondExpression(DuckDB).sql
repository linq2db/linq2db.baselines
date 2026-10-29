-- DuckDB
DECLARE $Value INTEGER -- Int32
SET     $Value = 41

SELECT
	EXTRACT(second FROM (t.DateTimeValue + $Value * Interval '1 Second'))
FROM
	LinqDataTypes t

