-- DuckDB

SELECT
	Extract(dayofyear from t.DateTimeValue)
FROM
	LinqDataTypes t

