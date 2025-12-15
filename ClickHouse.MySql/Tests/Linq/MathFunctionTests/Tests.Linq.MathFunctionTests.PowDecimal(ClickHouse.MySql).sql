-- ClickHouse.MySql ClickHouse

SELECT
	t.Value_1
FROM
	(
		SELECT
			Floor(toDecimal64(Power(toFloat64(p.MoneyValue), toFloat64(toDecimal128('3', 10))), 4)) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> toDecimal128('0', 10)

