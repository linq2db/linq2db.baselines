-- YDB Ydb

SELECT
	p.MoneyValue as MoneyValue
FROM
	LinqDataTypes p
WHERE
	Unwrap(CAST(p.MoneyValue AS Float)) > Float('0')

