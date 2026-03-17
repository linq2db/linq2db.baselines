-- ClickHouse.MySql ClickHouse

SELECT
	toFloat64(p.MoneyValue)
FROM
	LinqDataTypes p
WHERE
	toFloat64(p.MoneyValue) > toFloat64(0)

