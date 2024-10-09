BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t_1.c1
FROM
	(
		SELECT
			Floor(Atan2(toFloat64(t.MoneyValue) / toFloat64(toDecimal64('15', 10)), toFloat64(0)) * toFloat64(15)) as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> toFloat64(0.10000000000000001)

