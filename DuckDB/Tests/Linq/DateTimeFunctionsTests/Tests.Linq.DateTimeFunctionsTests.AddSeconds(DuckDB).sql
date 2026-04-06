-- DuckDB

SELECT
	EXTRACT(second FROM (t.DateTimeValue + CAST(-35 * Interval '1 Second' AS INTERVAL)))
FROM
	LinqDataTypes t

