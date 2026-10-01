-- YDB Ydb
SELECT
	p.MoneyValue + p.MoneyValue as c1
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> Decimal('0', 6, 2)

-- YDB Ydb
SELECT
	CASE
		WHEN p.ID > 2 THEN p.MoneyValue
		ELSE p.MoneyValue
	END as c1
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue <> Decimal('0', 6, 2)

