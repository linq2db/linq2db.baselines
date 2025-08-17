BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	toUInt16(p.MoneyValue) > toUInt16(0)

