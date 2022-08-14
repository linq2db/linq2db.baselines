BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toInt16(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	toInt16(t.MoneyValue) > toInt16(0)

