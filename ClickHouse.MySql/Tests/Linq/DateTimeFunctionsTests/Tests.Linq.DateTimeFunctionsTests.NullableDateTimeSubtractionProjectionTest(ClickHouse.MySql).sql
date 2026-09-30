-- ClickHouse.MySql ClickHouse
SELECT
	intDiv(toUnixTimestamp64Nano(toDateTime64(t.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(t.StartedOn, 7)), toInt64(100))
FROM
	NullableDateTimeSub t
ORDER BY
	t.Id

