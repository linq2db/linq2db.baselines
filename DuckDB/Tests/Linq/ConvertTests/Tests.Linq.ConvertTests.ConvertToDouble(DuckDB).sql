-- DuckDB

SELECT
	CAST(p.MoneyValue AS DOUBLE)
FROM
	LinqDataTypes p
WHERE
	CAST(p.MoneyValue AS DOUBLE) > 0

