BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			toUInt8(roundBankers(t.MoneyValue)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > toUInt8(0)

