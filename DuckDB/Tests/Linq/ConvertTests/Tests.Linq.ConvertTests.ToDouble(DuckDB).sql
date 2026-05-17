-- DuckDB

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	CAST(Floor(CAST(p.MoneyValue AS DOUBLE)) AS INTEGER) > 0

