-- YDB Ydb

SELECT
	p.MoneyValue as MoneyValue
FROM
	LinqDataTypes p
WHERE
	Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Double)) AS Uint16)) > 0us

