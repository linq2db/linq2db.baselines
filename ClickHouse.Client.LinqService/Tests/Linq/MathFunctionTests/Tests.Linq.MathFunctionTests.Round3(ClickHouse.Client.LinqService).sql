BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t_1.MoneyValue
FROM
	(
		SELECT
			roundBankers(t.MoneyValue, 1) as c1,
			t.MoneyValue as MoneyValue
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> toDecimal64('0', 4) AND t_1.c1 <> toDecimal64('7', 4)

