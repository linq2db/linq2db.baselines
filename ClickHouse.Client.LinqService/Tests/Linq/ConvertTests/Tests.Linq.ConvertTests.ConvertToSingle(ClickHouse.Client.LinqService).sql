BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toInt32(p_1.c1)
FROM
	(
		SELECT
			toFloat32(p.MoneyValue) as c1
		FROM
			LinqDataTypes p
	) p_1
WHERE
	p_1.c1 > toFloat32(0)

