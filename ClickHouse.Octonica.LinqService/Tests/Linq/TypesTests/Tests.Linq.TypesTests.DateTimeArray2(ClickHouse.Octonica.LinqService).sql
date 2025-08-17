BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
	t.DateTimeValue IN (toDateTime64('2001-01-11 01:11:21.100', 3), toDateTime64('2012-11-07 19:19:29.090', 3))

