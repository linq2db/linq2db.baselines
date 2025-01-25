BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t_1.c1
FROM
	(
		SELECT
			roundBankers(t.MoneyValue, 1) as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> toDecimal128('0', 10) AND t_1.c1 <> toDecimal128('7', 10)

