-- YDB Ydb
SELECT
	t.c1 as c1
FROM
	(
		SELECT
			Abs(p.MoneyValue) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 > Decimal('0', 22, 9)

