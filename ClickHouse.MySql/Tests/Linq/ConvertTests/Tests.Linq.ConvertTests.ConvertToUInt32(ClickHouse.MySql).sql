BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p_1.c1
FROM
	(
		SELECT
			toUInt32(roundBankers(p.MoneyValue)) as c1
		FROM
			LinqDataTypes p
	) p_1
WHERE
	p_1.c1 > toUInt32(0)

