-- YDB Ydb

SELECT
	Unwrap(CAST(Unwrap(CAST(t.MoneyValue AS Double)) AS Int32)) as c1
FROM
	LinqDataTypes t

