-- DuckDB
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
			t.Status,
			t.StartDateTime + -((CAST(t.PreNotification AS BIGINT) - (CAST(t.PreNotification AS BIGINT) % 864000000000)) // 864000000000) * Interval '1 Day' + ((-(CAST(t.PreNotification AS BIGINT) % 864000000000) - (-(CAST(t.PreNotification AS BIGINT) % 864000000000) % 10000)) // 10000) * Interval '1 Millisecond' as NotificationDateTime,
			t.StartDateTime,
			t.StartDateTime2,
			t.EndDateTime,
			t.PreNotification,
			t.PreNotification2,
			t.PreNotification3,
			t.StrField
		FROM
			Common_Topology_Locations t
	) x
WHERE
	(x.Status <> 'New' OR x.Status IS NULL) AND
	(x.Status <> 'Completed' OR x.Status IS NULL) AND
	x.NotificationDateTime < '2026-08-03 19:02:24.026972'::TIMESTAMP AND
	CAST(x.StartDateTime AS DATE) < CAST('2026-08-03 19:02:24.027137'::TIMESTAMP AS DATE)

