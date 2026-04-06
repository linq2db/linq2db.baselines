-- DuckDB

SELECT
	t.DateTimeValue + CAST(226 * Interval '1 Millisecond' AS INTERVAL)
FROM
	LinqDataTypes t

-- DuckDB

SELECT
	t.DateTimeValue
FROM
	LinqDataTypes t

