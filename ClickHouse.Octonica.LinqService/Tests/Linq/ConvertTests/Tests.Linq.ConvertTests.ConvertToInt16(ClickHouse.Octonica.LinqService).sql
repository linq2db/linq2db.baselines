BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p_1.c1
FROM
	(
		SELECT
			toInt16(roundBankers(p.MoneyValue)) as c1
		FROM
			LinqDataTypes p
	) p_1
WHERE
	p_1.c1 > toInt16(0)

