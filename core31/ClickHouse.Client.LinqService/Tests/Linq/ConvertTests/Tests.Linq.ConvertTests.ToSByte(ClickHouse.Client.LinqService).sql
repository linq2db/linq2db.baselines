BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	toInt8(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	toInt8(t.MoneyValue) > toInt8(0)

