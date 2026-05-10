-- DuckDB
DECLARE $p  -- Int32
SET     $p = 226

SELECT
	t.DateTimeValue + $p * Interval '1 Millisecond'
FROM
	LinqDataTypes t

-- DuckDB

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t

