BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.MoneyValue
FROM
	LinqDataTypes p
WHERE
	toInt32(toFloat64(p.MoneyValue)) > 0

