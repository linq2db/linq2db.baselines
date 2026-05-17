-- DuckDB

SELECT
	EXTRACT(second FROM (t.DateTimeValue + -35 * Interval '1 Second'))
FROM
	LinqDataTypes t

