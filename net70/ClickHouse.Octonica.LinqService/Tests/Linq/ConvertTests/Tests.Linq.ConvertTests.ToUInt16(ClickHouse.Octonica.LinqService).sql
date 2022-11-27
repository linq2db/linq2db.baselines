BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toUInt16(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	toUInt16(t.MoneyValue) > toUInt16(0)

