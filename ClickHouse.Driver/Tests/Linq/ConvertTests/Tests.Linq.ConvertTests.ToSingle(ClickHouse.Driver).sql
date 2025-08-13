BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	toFloat32(p.MoneyValue) > toFloat32(0)

