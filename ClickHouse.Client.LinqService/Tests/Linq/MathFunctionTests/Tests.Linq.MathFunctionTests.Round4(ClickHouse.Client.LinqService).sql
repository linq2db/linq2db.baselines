BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t_1.c1
FROM
	(
		SELECT
			roundBankers(toFloat64(t.MoneyValue), 1) as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> toFloat64(0)

