-- DuckDB

SELECT
	Extract(quarter from t.DateTimeValue)
FROM
	LinqDataTypes t

