-- ClickHouse.Driver ClickHouse

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	toInt16(p.MoneyValue) > toInt16(0)

