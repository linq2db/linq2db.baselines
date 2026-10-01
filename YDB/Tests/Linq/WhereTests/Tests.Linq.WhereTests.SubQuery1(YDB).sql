-- YDB Ydb
SELECT
	pp.MoneyValue as MoneyValue
FROM
	LinqDataTypes pp
WHERE
	pp.MoneyValue <> Decimal('0', 6, 2) AND pp.MoneyValue <> Decimal('7', 6, 2)

