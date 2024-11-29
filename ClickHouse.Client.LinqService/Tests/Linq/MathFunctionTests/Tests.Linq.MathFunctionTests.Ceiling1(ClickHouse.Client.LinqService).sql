BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			Ceiling(negate(p.MoneyValue + toDecimal64('1', 4))) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toDecimal128('0', 10)

