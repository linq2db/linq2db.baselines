BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t.c1
FROM
	(
		SELECT
			roundBankers(p.MoneyValue) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toDecimal64('0', 4)

