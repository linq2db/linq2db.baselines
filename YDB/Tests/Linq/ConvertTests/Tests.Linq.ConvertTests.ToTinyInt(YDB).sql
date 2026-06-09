-- YDB Ydb

SELECT
	Unwrap(CAST(Unwrap(CAST(t.MoneyValue AS Double)) AS Uint8)) as c1
FROM
	LinqDataTypes t

