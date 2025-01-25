BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p_1.c1
FROM
	(
		SELECT
			toDecimal128(p.MoneyValue, toUInt8(10)) as c1
		FROM
			LinqDataTypes p
	) p_1
WHERE
	p_1.c1 > toDecimal128('0', 10)

