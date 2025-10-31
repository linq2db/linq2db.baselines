BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t.c1
FROM
	(
		SELECT
			roundBankers(toFloat64(p.MoneyValue)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toFloat64(0)

