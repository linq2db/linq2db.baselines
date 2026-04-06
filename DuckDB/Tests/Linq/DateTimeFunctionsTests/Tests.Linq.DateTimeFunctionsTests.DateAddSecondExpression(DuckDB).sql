-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 41

SELECT
	EXTRACT(second FROM (t.DateTimeValue + CAST(CAST($Value AS INTEGER) * Interval '1 Second' AS INTERVAL)))
FROM
	LinqDataTypes t

