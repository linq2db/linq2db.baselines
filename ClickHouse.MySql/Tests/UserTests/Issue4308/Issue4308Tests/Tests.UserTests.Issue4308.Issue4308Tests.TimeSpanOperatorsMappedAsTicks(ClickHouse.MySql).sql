-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.StartDateTime,
	t1.EndDateTime,
	t1.RequiredDateTime,
	t1.PreNotification,
	t1.RequiredInterval
FROM
	Common_Topology_Locations t1
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(row_1.StartDateTime, (toInt64(row_1.PreNotification) - (toInt64(row_1.PreNotification) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(row_1.PreNotification) % toInt64(864000000000)) * toInt64(100)),
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(row_1.RequiredDateTime, (toInt64(row_1.RequiredInterval) - (toInt64(row_1.RequiredInterval) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(row_1.RequiredInterval) % toInt64(864000000000)) * toInt64(100)),
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(row_1.StartDateTime, (toInt64(row_1.RequiredInterval) - (toInt64(row_1.RequiredInterval) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(row_1.RequiredInterval) % toInt64(864000000000)) * toInt64(100)),
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(row_1.RequiredDateTime, (toInt64(row_1.PreNotification) - (toInt64(row_1.PreNotification) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(row_1.PreNotification) % toInt64(864000000000)) * toInt64(100)),
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(row_1.StartDateTime, negate((toInt64(row_1.PreNotification) - (toInt64(row_1.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(row_1.PreNotification) % toInt64(864000000000)) * toInt64(100)),
	negate(row_1.PreNotification),
	toInt64((toUnixTimestamp64Nano(toDateTime64(row_1.EndDateTime, 9)) - toUnixTimestamp64Nano(toDateTime64(row_1.StartDateTime, 9))) / 100),
	toInt64((toUnixTimestamp64Nano(toDateTime64(row_1.EndDateTime, 9)) - toUnixTimestamp64Nano(toDateTime64(row_1.RequiredDateTime, 9))) / 100),
	toInt64((toUnixTimestamp64Nano(toDateTime64(row_1.RequiredDateTime, 9)) - toUnixTimestamp64Nano(toDateTime64(row_1.StartDateTime, 9))) / 100)
FROM
	Common_Topology_Locations row_1
LIMIT 2

