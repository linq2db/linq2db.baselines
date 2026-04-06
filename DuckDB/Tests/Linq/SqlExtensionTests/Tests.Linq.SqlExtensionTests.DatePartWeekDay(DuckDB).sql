-- DuckDB

SELECT
	Extract(dow from t.DateTimeValue) + 1
FROM
	LinqDataTypes t

