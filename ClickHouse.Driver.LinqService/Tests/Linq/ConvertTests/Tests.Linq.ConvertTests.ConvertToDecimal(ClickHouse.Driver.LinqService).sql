BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.c1
FROM
	(
		SELECT
			toDecimal128(t.MoneyValue, 10) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > toDecimal128('0', 10)

