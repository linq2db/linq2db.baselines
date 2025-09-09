BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
			t."StartDateTime" + (-t."PreNotification" / 10) * Interval '1 Microsecond' as "NotificationDateTime",
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
	x."NotificationDateTime" < '2025-08-31 18:27:48.898'::timestamp AND
	Date_Trunc('day', x."StartDateTime") < Date_Trunc('day', '2025-08-31 18:27:48.898'::timestamp)

