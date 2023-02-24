BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toInt64(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	toInt64(t.MoneyValue) > toInt64(0)

