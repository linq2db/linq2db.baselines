-- YDB Ydb

SELECT
	Unwrap(CAST(p.MoneyValue AS Double)) as c1
FROM
	LinqDataTypes p
WHERE
	Unwrap(CAST(p.MoneyValue AS Double)) > Double('0')

