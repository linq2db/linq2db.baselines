-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(t.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) as c1
FROM
	LinqDataTypes t
WHERE
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(t.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) <> Decimal('0', 6, 2)

