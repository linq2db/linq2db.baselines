-- ClickHouse.Driver ClickHouse

SELECT
	t.Value_1
FROM
	(
		SELECT
			Degrees(toInt32(p.MoneyValue)) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	toFloat64(t.Value_1) <> toFloat64(0.10000000000000001)

