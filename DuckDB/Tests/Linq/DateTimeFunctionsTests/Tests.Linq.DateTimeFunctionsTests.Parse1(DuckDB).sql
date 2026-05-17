-- DuckDB

SELECT
	CAST(d.DateTimeValue AS DATE)
FROM
	LinqDataTypes d
WHERE
	EXTRACT(day FROM d.DateTimeValue) > 0

