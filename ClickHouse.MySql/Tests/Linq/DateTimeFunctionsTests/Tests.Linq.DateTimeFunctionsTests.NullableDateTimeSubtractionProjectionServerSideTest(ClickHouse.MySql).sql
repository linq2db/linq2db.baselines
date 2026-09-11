-- ClickHouse.MySql ClickHouse
SELECT
	intDiv(toUnixTimestamp64Nano(t.FinishedOn) - toUnixTimestamp64Nano(t.StartedOn), toInt64(100))
FROM
	NullableDateTimeSub t
ORDER BY
	t.Id

