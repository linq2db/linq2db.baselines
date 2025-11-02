-- ClickHouse.Driver ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			toInt8(roundBankers(t.MoneyValue)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > toInt8(0)

