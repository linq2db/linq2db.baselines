-- ClickHouse.Octonica ClickHouse

SELECT
	t.Value_1
FROM
	(
		SELECT
			Floor(Log(toFloat64(p.MoneyValue))) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> toFloat64(0.10000000000000001)

