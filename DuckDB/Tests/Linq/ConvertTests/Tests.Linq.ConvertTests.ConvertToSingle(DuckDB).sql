-- DuckDB

SELECT
	CAST(p.MoneyValue AS FLOAT)
FROM
	LinqDataTypes p
WHERE
	CAST(p.MoneyValue AS FLOAT) > '0'::FLOAT

