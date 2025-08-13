BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			toInt64(roundBankers(t.MoneyValue)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > toInt64(0)

