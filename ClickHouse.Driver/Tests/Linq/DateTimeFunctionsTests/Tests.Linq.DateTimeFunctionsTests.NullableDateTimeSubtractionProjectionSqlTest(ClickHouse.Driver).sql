-- ClickHouse.Driver ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(toDateTime64(t.FinishedOn, 9)) - toUnixTimestamp64Nano(toDateTime64(t.StartedOn, 9))) / 100)
FROM
	NullableDateTimeSub t
ORDER BY
	t.Id

