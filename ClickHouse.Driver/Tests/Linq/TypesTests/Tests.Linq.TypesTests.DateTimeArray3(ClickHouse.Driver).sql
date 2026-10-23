-- ClickHouse.Driver ClickHouse
SELECT
	t.ID,
	t.MoneyValue,
	t.DateTimeValue,
	t.DateTimeValue2,
	t.BoolValue,
	t.GuidValue,
	t.SmallIntValue,
	t.IntValue,
	t.BigIntValue,
	t.StringValue
FROM
	LinqDataTypes t
WHERE
	toDateTime64(t.DateTimeValue, 7) IN (toDateTime64('2001-01-11 01:11:21.1000000', 7))

