-- Oracle.21.Managed Oracle.Managed Oracle12
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
			t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime",
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
	x."NotificationDateTime" < SYS_EXTRACT_UTC(SYSTIMESTAMP) AND
	TRUNC(x."StartDateTime") < TRUNC(SYS_EXTRACT_UTC(SYSTIMESTAMP))

