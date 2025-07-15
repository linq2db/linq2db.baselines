BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			toUInt16(roundBankers(t.MoneyValue)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > toUInt16(0)

