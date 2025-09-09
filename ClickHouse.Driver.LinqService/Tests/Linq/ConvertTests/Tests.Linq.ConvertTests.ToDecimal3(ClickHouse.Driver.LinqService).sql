BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	p.MoneyValue > toDecimal64('0', 4)

