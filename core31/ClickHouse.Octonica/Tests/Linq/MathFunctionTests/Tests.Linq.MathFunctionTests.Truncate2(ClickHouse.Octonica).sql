BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			Truncate(toFloat64(negate(p.MoneyValue))) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toFloat64(0.10000000000000001)

