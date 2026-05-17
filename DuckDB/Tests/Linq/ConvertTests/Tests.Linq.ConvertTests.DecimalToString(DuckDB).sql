-- DuckDB

SELECT
	RTRIM(Replace(CAST(p.MoneyValue AS VARCHAR), ',', '.'), '0.')
FROM
	LinqDataTypes p
WHERE
	Length(CAST(p.MoneyValue AS VARCHAR)) > 0

