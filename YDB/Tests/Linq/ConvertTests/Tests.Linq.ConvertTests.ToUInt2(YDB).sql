-- YDB Ydb

SELECT
	Unwrap(CAST(Unwrap(CAST(t.MoneyValue AS Double)) AS Uint32)) as c1
FROM
	LinqDataTypes t

