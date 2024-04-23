BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p_1.c1
FROM
	(
		SELECT
			toUInt16(p.MoneyValue) as c1
		FROM
			LinqDataTypes p
	) p_1
WHERE
	p_1.c1 > toUInt16(0)

