BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Value_1
FROM
	(
		SELECT
			Floor(Power(toFloat64(p.MoneyValue), toFloat64(3))) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> toFloat64(0)

