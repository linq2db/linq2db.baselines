-- YDB Ydb

SELECT
	p.MoneyValue as MoneyValue
FROM
	LinqDataTypes p
WHERE
	Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Double)) AS Int32)) > 0

