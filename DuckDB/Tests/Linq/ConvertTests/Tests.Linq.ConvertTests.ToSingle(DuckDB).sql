-- DuckDB

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	CAST(p.MoneyValue AS FLOAT) > '0'::FLOAT

