BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t_1.c1
FROM
	(
		SELECT
			Floor(Power(toFloat64(t.MoneyValue), toFloat64(3))) as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> toFloat64(0)

