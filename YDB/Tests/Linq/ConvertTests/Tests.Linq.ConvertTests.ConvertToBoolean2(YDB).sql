-- YDB Ydb

SELECT
	p.c1 as c1
FROM
	(
		SELECT
			t.MoneyValue <> Decimal('4.5', 22, 9) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	NOT p.c1

