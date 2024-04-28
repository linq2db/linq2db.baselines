BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p_1.c1
FROM
	(
		SELECT
			toInt64(p.MoneyValue) as c1
		FROM
			LinqDataTypes p
	) p_1
WHERE
	p_1.c1 > toInt64(0)

