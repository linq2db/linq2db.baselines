-- ClickHouse.Driver ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			t.MoneyValue <> toDecimal128('4.5', 10) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	NOT p.c1

