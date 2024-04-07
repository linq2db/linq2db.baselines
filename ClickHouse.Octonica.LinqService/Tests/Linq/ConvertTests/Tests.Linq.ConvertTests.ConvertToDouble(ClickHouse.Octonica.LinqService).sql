BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toFloat64(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	toFloat64(t.MoneyValue) > toFloat64(0)

