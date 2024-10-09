BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t_1.c1
FROM
	(
		SELECT
			Floor(negate(t.MoneyValue + toDecimal64('1', 4))) as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> toDecimal128('0', 10)

