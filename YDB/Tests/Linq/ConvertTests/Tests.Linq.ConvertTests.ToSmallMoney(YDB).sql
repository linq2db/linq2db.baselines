-- YDB Ydb

SELECT
	Unwrap(CAST(t.MoneyValue AS Decimal(22,9))) as c1
FROM
	LinqDataTypes t

