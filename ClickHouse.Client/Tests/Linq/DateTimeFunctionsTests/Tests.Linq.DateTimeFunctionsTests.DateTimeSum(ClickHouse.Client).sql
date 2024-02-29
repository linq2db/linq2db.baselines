BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID,
	Count(*),
	sumOrNull(toUnixTimestamp64Milli(toDateTime64(addDays(t1.DateTimeValue, toFloat64(1)), 3)) - toUnixTimestamp64Milli(toDateTime64(t1.DateTimeValue, 3))),
	maxOrNull(toUnixTimestamp64Milli(toDateTime64(addDays(t1.DateTimeValue, toFloat64(1)), 3)) - toUnixTimestamp64Milli(toDateTime64(t1.DateTimeValue, 3)))
FROM
	LinqDataTypes t1
GROUP BY
	t1.ID

