-- ClickHouse.Octonica ClickHouse
SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.DateTimeValue2,
	t1.BoolValue,
	t1.GuidValue,
	t1.SmallIntValue,
	t1.IntValue,
	t1.BigIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	LinqDataTypes x
WHERE
	(toDateTime64(x.DateTimeValue2, 7) IN (makeDateTime64(2009, 9, 24, 9, 19, 29, 90)) OR toDateTime64(x.DateTimeValue2, 7) IS NULL)

