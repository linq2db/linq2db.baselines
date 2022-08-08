BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toUInt32(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	toUInt32(t.MoneyValue) > toUInt32(0)

