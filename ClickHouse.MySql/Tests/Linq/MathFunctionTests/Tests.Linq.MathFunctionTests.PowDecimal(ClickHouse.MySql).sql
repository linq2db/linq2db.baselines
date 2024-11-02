BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(toDecimal64(Power(toFloat64(p.MoneyValue), toFloat64(toDecimal128('3', 10))), toUInt8(4))) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toDecimal128('0', 10)

