BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	toInt8(p.MoneyValue) > toInt8(0)

