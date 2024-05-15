BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p_1.c1
FROM
	(
		SELECT
			toInt8(roundBankers(p.MoneyValue)) as c1
		FROM
			LinqDataTypes p
	) p_1
WHERE
	p_1.c1 > toInt8(0)

