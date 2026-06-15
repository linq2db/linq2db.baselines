-- YDB Ydb

SELECT
	Unwrap(CAST(Unwrap(CAST(t.MoneyValue AS Double)) AS Int16)) as c1
FROM
	LinqDataTypes t

