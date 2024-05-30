BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p_1.c1
FROM
	(
		SELECT
			toFloat64(p.MoneyValue) as c1
		FROM
			LinqDataTypes p
	) p_1
WHERE
	p_1.c1 > toFloat64(0)

