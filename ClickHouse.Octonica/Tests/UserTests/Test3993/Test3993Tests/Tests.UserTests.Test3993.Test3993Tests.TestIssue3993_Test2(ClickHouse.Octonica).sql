-- ClickHouse.Octonica ClickHouse
SELECT
	x.StartDateTime,
	x.StartDateTime2,
	x.EndDateTime,
	x.PreNotification,
	x.PreNotification2,
	x.PreNotification3,
	x.StrField,
	x.Status,
	x.NotificationDateTime
FROM
	(
		SELECT
			t.Status as Status,
			fromUnixTimestamp64Nano(toUnixTimestamp64Nano(addDays(t.StartDateTime, negate((toInt64(t.PreNotification) - (toInt64(t.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)))) + negate(toInt64(t.PreNotification) % toInt64(864000000000)) * toInt64(100)) as NotificationDateTime,
			t.StartDateTime as StartDateTime,
			t.StartDateTime2 as StartDateTime2,
			t.EndDateTime as EndDateTime,
			t.PreNotification as PreNotification,
			t.PreNotification2 as PreNotification2,
			t.PreNotification3 as PreNotification3,
			t.StrField as StrField
		FROM
			Common_Topology_Locations t
	) x
WHERE
	(x.Status <> 'New' OR x.Status IS NULL) AND
	(x.Status <> 'Completed' OR x.Status IS NULL) AND
	x.NotificationDateTime < now('UTC') AND
	toDate32(x.StartDateTime) < toDate32(now('UTC'))

