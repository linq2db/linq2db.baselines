BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	roundBankers(t.c1, 5)
FROM
	(
		SELECT
			roundBankers(toFloat64(p.MoneyValue), 1) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toFloat64(0)

