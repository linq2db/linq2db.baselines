-- ClickHouse.Octonica ClickHouse
SELECT
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100))
FROM
	Common_Topology_Locations t

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.StartDateTime,
	t1.StartDateTime2,
	t1.EndDateTime,
	t1.PreNotification,
	t1.PreNotification2,
	t1.PreNotification3,
	t1.StrField,
	t1.Status
FROM
	Common_Topology_Locations t1

-- ClickHouse.Octonica ClickHouse
SELECT
	x.StartDateTime,
	x.StartDateTime2,
	x.EndDateTime,
	x.PreNotification,
	x.PreNotification2,
	x.PreNotification3,
	x.StrField,
	x.Status
FROM
	Common_Topology_Locations x
WHERE
	toYear(x.StartDateTime2) = 2023

-- ClickHouse.Octonica ClickHouse
SELECT
	x.StartDateTime,
	x.StartDateTime2,
	x.EndDateTime,
	x.PreNotification,
	x.PreNotification2,
	x.PreNotification3,
	x.StrField,
	x.Status
FROM
	Common_Topology_Locations x
WHERE
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(x.StartDateTime2, (toInt64(toInt64(3000000000)) - (toInt64(toInt64(3000000000)) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(toInt64(3000000000)) % toInt64(864000000000)) * toInt64(100)) > now('UTC')

-- ClickHouse.Octonica ClickHouse
SELECT
	x.StartDateTime,
	x.StartDateTime2,
	x.EndDateTime,
	x.PreNotification,
	x.PreNotification2,
	x.PreNotification3,
	x.StrField,
	x.Status
FROM
	Common_Topology_Locations x
WHERE
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(x.StartDateTime2, (toInt64(toInt64(31536000000000000)) - (toInt64(toInt64(31536000000000000)) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(toInt64(31536000000000000)) % toInt64(864000000000)) * toInt64(100)) > now('UTC')

-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(toInt64(x.PreNotification)) / toFloat64(10000),
	toFloat64(toInt64(x.PreNotification)) / toFloat64(10000000)
FROM
	Common_Topology_Locations x
WHERE
	toFloat64(toInt64(x.PreNotification)) / toFloat64(10000000) < toFloat64(toInt64(x.PreNotification)) / toFloat64(10000)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime,
			t.StartDateTime as StartDateTime,
			t.PreNotification as PreNotification,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification2)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime2,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification3)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime3,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime4,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime5,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, (toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime6,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime7,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime8,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, (toInt64(negate(t.PreNotification3)) - (toInt64(negate(t.PreNotification3)) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(negate(t.PreNotification3)) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime9,
			toDayOfMonth(t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime < toDateTime64('2020-02-29 17:54:55.1231000', 7)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification2)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime2,
			t.StartDateTime as StartDateTime,
			t.PreNotification as PreNotification,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification3)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime3,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime4,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime5,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, (toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime6,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime7,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime8,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, (toInt64(negate(t.PreNotification3)) - (toInt64(negate(t.PreNotification3)) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(negate(t.PreNotification3)) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime9,
			toDayOfMonth(t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime2 < toDateTime64('2020-02-29 17:54:55.1231000', 7)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime4,
			t.StartDateTime as StartDateTime,
			t.PreNotification as PreNotification,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification2)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime2,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification3)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime3,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime5,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, (toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime6,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime7,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime8,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, (toInt64(negate(t.PreNotification3)) - (toInt64(negate(t.PreNotification3)) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(negate(t.PreNotification3)) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime9,
			toDayOfMonth(t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime4 < toDateTime64('2020-02-29 17:54:55.1231000', 7)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime5,
			t.StartDateTime as StartDateTime,
			t.PreNotification as PreNotification,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification2)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime2,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification3)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime3,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime4,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, (toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime6,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime7,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime8,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, (toInt64(negate(t.PreNotification3)) - (toInt64(negate(t.PreNotification3)) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(negate(t.PreNotification3)) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime9,
			toDayOfMonth(t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime5 < toDateTime64('2020-02-29 17:54:55.1231000', 7)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, (toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime6,
			t.StartDateTime as StartDateTime,
			t.PreNotification as PreNotification,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification2)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime2,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification3)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime3,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime4,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime5,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime7,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime8,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, (toInt64(negate(t.PreNotification3)) - (toInt64(negate(t.PreNotification3)) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(negate(t.PreNotification3)) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime9,
			toDayOfMonth(t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime6 < toDateTime64('2020-02-29 17:54:55.1231000', 7)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime7,
			t.StartDateTime as StartDateTime,
			t.PreNotification as PreNotification,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification2)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime2,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification3)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime3,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime4,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime5,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, (toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime6,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime8,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, (toInt64(negate(t.PreNotification3)) - (toInt64(negate(t.PreNotification3)) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(negate(t.PreNotification3)) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime9,
			toDayOfMonth(t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime7 < toDateTime64('2020-02-29 17:54:55.1231000', 7)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.StartDateTime,
	x.PreNotification,
	x.NotificationDateTime,
	x.NotificationDateTime2,
	x.NotificationDateTime3,
	x.NotificationDateTime4,
	x.NotificationDateTime5,
	x.NotificationDateTime6,
	x.NotificationDateTime7,
	x.NotificationDateTime8,
	x.NotificationDateTime9,
	x.Day_1
FROM
	(
		SELECT
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime8,
			t.StartDateTime as StartDateTime,
			t.PreNotification as PreNotification,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification2)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime2,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(t.StartDateTime) + toInt64((toFloat64(-1) * (toFloat64(toInt64(t.PreNotification3)) / toFloat64(10000))) * toInt64(1000000))) as NotificationDateTime3,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime4,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime5,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, (toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime6,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime7,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime2, (toInt64(negate(t.PreNotification3)) - (toInt64(negate(t.PreNotification3)) % toInt64(864000000000))) / toInt64(864000000000))) + (toInt64(negate(t.PreNotification3)) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime9,
			toDayOfMonth(t.StrField) as Day_1
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime8 < toDateTime64('2020-02-29 17:54:55.1231000', 7)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.NotificationDateTime4
FROM
	(
		SELECT
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification3) - (toInt64(t.PreNotification3) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification3) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime4
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.NotificationDateTime4 < toDateTime64('2020-02-29 17:54:55.1231234', 7)

-- ClickHouse.Octonica ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(toDateTime64(t.EndDateTime, 9)) - toUnixTimestamp64Nano(toDateTime64(t.StartDateTime, 9))) / 100)
FROM
	Common_Topology_Locations t

-- ClickHouse.Octonica ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(toDateTime64(x.EndDateTime, 9)) - toUnixTimestamp64Nano(toDateTime64(x.StartDateTime, 9))) / 100)
FROM
	Common_Topology_Locations x

-- ClickHouse.Octonica ClickHouse
SELECT
	x.diff
FROM
	(
		SELECT
			toInt64((toUnixTimestamp64Nano(toDateTime64(t.EndDateTime, 9)) - toUnixTimestamp64Nano(toDateTime64(t.StartDateTime, 9))) / 100) as diff
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.diff < toInt64(180000000000)

-- ClickHouse.Octonica ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(toDateTime64(x.EndDateTime, 9)) - toUnixTimestamp64Nano(toDateTime64(x.StartDateTime, 9))) / 100)
FROM
	Common_Topology_Locations x
WHERE
	toFloat64(toInt64(toInt64((toUnixTimestamp64Nano(toDateTime64(x.EndDateTime, 9)) - toUnixTimestamp64Nano(toDateTime64(x.StartDateTime, 9))) / 100))) / toFloat64(36000000000) < toFloat64(5)

-- ClickHouse.Octonica ClickHouse
SELECT
	x.diff
FROM
	(
		SELECT
			toInt64((toUnixTimestamp64Nano(toDateTime64(t.EndDateTime, 9)) - toUnixTimestamp64Nano(toDateTime64(t.StartDateTime, 9))) / 100) as diff
		FROM
			Common_Topology_Locations t
	) x
WHERE
	x.diff < toInt64(72000000000)

-- ClickHouse.Octonica ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(toDateTime64(x.EndDateTime, 9)) - toUnixTimestamp64Nano(toDateTime64(x.StartDateTime, 9))) / 100)
FROM
	Common_Topology_Locations x
WHERE
	toFloat64(toInt64(toInt64((toUnixTimestamp64Nano(toDateTime64(x.EndDateTime, 9)) - toUnixTimestamp64Nano(toDateTime64(x.StartDateTime, 9))) / 100))) / toFloat64(36000000000) < toFloat64(2)

