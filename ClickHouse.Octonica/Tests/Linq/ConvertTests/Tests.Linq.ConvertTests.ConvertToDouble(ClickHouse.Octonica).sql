-- ClickHouse.Octonica ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			toFloat64(t.MoneyValue) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	p.c1 > toFloat64(0)

