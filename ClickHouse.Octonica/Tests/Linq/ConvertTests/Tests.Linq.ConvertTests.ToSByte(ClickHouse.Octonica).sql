BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	toInt8(p.MoneyValue) > toInt8(0)

