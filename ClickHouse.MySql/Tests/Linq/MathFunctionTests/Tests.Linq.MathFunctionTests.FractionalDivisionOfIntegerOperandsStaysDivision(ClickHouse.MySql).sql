-- ClickHouse.MySql ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(toDateTime64(p.DateTimeValue, 7)) - toUnixTimestamp64Nano(toDateTime64(toDate32(p.DateTimeValue), 7))) / 100)
FROM
	LinqDataTypes p
ORDER BY
	p.ID

-- ClickHouse.MySql ClickHouse
SELECT
	t1.ID,
	t1.MoneyValue,
	t1.DateTimeValue,
	t1.BoolValue,
	t1.GuidValue,
	t1.BinaryValue,
	t1.SmallIntValue,
	t1.StringValue
FROM
	LinqDataTypes t1

