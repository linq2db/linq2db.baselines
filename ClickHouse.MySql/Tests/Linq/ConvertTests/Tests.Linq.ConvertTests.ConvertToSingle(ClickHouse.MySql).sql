-- ClickHouse.MySql ClickHouse

SELECT
	toFloat32(p.MoneyValue)
FROM
	LinqDataTypes p
WHERE
	toFloat32(p.MoneyValue) > toFloat32(0)

