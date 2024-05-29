BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t_1.c1
FROM
	(
		SELECT
			Degrees(toInt32(t.MoneyValue)) as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	toFloat64(t_1.c1) <> toFloat64(0.10000000000000001)

