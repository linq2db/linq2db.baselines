-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	x."StartDateTime",
	x."StartDateTime2",
	x."EndDateTime",
	x."PreNotification",
	x."PreNotification2",
	x."PreNotification3",
	x."StrField",
	x."Status",
	x."NotificationDateTime"
FROM
	(
		SELECT
			t."Status",
			t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond' as "NotificationDateTime",
			t."StartDateTime",
			t."StartDateTime2",
			t."EndDateTime",
			t."PreNotification",
			t."PreNotification2",
			t."PreNotification3",
			t."StrField"
		FROM
			"Common_Topology_Locations" t
	) x
WHERE
	(x."Status" <> 'New' OR x."Status" IS NULL) AND
	(x."Status" <> 'Completed' OR x."Status" IS NULL) AND
	x."NotificationDateTime" < timezone('UTC', now()) AND
	Date_Trunc('day', x."StartDateTime") < Date_Trunc('day', timezone('UTC', now()))

