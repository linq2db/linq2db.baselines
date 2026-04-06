-- DuckDB

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	CAST(Floor(p.MoneyValue) AS UINTEGER) > 0

