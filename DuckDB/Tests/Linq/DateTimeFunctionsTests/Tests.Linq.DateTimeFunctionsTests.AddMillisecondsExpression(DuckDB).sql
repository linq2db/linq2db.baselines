-- DuckDB
DECLARE $p  -- Int32
SET     $p = 226

SELECT
	t.DateTimeValue + CAST(CAST($p AS INTEGER) * Interval '1 Millisecond' AS INTERVAL)
FROM
	LinqDataTypes t

-- DuckDB

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t

