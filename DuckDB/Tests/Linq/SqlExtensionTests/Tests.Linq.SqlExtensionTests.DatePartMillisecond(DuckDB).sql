-- DuckDB

SELECT
	Extract(millisecond from t.DateTimeValue) % 1000
FROM
	LinqDataTypes t

