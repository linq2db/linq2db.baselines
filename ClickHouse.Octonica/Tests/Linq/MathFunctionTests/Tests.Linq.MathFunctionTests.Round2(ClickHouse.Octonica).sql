-- ClickHouse.Octonica ClickHouse

SELECT
	t.MoneyValue
FROM
	LinqDataTypes t
WHERE
	roundBankers(toFloat64(t.MoneyValue)) <> toFloat64(0)

