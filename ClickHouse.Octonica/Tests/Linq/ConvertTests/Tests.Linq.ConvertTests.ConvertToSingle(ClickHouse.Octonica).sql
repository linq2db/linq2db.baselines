-- ClickHouse.Octonica ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			toFloat32(t.MoneyValue) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > toFloat32(0)

