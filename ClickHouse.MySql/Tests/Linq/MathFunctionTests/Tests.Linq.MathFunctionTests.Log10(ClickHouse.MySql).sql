BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t_1.c1
FROM
	(
		SELECT
			Floor(Log10(toFloat64(t.MoneyValue))) as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> toFloat64(0.10000000000000001)

