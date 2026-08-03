-- ClickHouse.MySql ClickHouse
SELECT
	t.StartDateTime,
	t.StartDateTime2,
	t.EndDateTime,
	t.PreNotification,
	t.PreNotification2,
	t.PreNotification3,
	t.StrField,
	t.Status,
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100))
FROM
	Common_Topology_Locations t
LIMIT 1

-- ClickHouse.MySql ClickHouse
SELECT
	t.StartDateTime,
	t.PreNotification,
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100))
FROM
	Common_Topology_Locations t
LIMIT 1

-- ClickHouse.MySql ClickHouse
SELECT
	t.StartDateTime,
	t.StartDateTime2,
	t.EndDateTime,
	t.PreNotification,
	t.PreNotification2,
	t.PreNotification3,
	t.StrField,
	t.Status,
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100))
FROM
	Common_Topology_Locations t
WHERE
	toHour(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100))) = 13
LIMIT 1

-- ClickHouse.MySql ClickHouse
SELECT
	t.StartDateTime,
	t.StartDateTime2,
	t.EndDateTime,
	t.PreNotification,
	t.PreNotification2,
	t.PreNotification3,
	t.StrField,
	t.Status,
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100))
FROM
	Common_Topology_Locations t
WHERE
	toMinute(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100))) = 51
LIMIT 1

-- ClickHouse.MySql ClickHouse
SELECT
	t.StartDateTime,
	t.StartDateTime2,
	t.EndDateTime,
	t.PreNotification,
	t.PreNotification2,
	t.PreNotification3,
	t.StrField,
	t.Status,
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100))
FROM
	Common_Topology_Locations t
WHERE
	toSecond(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100))) >= 52 AND
	toSecond(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100))) <= 54
LIMIT 1

