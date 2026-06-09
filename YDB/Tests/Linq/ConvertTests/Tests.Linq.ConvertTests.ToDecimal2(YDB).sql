-- YDB Ydb

SELECT
	Unwrap(CAST(t.MoneyValue AS Decimal(10,4))) as c1
FROM
	LinqDataTypes t

