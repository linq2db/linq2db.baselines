BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t_1.c1
FROM
	(
		SELECT
			Ceiling(t.MoneyValue) as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> toDecimal128('0', 10)

