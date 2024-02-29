BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toInt32(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	toInt32(t.MoneyValue) > toInt32(0)

