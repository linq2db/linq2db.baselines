BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			toDecimal128(t.MoneyValue, toUInt8(10)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > toDecimal128('0', 10)

