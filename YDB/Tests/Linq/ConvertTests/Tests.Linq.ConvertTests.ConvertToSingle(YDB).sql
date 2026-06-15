-- YDB Ydb

SELECT
	Unwrap(CAST(p.MoneyValue AS Float)) as c1
FROM
	LinqDataTypes p
WHERE
	Unwrap(CAST(p.MoneyValue AS Float)) > Float('0')

