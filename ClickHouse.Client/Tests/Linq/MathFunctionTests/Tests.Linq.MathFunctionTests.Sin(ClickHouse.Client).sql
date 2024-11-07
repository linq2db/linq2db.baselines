BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Sin(toFloat64(p.MoneyValue) / toFloat64(toDecimal64('15', 10))) * toFloat64(15)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toFloat64(0.10000000000000001)

