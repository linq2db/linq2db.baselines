-- ClickHouse.MySql ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			toUInt32(roundBankers(t.MoneyValue)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > toUInt32(0)

