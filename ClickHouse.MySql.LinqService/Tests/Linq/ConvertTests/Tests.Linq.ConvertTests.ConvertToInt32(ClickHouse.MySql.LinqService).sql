BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			toInt32(roundBankers(t.MoneyValue)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > 0

