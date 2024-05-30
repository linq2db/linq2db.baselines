BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t_1.c1
FROM
	(
		SELECT
			Ceiling(negate(t.MoneyValue + toDecimal64('1', 10))) as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> toDecimal128('0', 10)

