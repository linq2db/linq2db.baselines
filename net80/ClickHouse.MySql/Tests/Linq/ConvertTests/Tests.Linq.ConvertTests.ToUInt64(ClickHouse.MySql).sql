BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toUInt64(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	toUInt64(t.MoneyValue) > toUInt64(0)

