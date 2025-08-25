BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.c1
FROM
	(
		SELECT
			toInt16(roundBankers(t.MoneyValue)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > toInt16(0)

