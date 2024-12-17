BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value_1
FROM
	(
		SELECT
			Truncate(toFloat64(negate(p.MoneyValue))) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> toFloat64(0.10000000000000001)

