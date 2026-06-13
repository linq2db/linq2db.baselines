-- YDB Ydb

SELECT
	Unwrap(CAST(p.MoneyValue AS Decimal(22,9))) as c1
FROM
	LinqDataTypes p
WHERE
	Unwrap(CAST(p.MoneyValue AS Decimal(22,9))) > Decimal('0', 22, 9)

