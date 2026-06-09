-- YDB Ydb

SELECT
	p.MoneyValue as MoneyValue
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue > Decimal('0', 6, 2)

