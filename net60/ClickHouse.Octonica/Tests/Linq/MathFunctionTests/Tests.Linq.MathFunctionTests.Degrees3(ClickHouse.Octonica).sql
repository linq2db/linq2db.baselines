BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			Degrees(toInt32(p.MoneyValue)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	toFloat64(t.c1) <> toFloat64(0.10000000000000001)

