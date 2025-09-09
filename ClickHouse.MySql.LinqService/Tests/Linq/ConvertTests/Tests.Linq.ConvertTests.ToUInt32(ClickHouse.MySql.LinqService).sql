BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	toUInt32(p.MoneyValue) > toUInt32(0)

