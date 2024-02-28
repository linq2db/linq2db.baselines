BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toUInt8(t.MoneyValue)
FROM
	LinqDataTypes t
WHERE
	toUInt8(t.MoneyValue) > toUInt8(0)

