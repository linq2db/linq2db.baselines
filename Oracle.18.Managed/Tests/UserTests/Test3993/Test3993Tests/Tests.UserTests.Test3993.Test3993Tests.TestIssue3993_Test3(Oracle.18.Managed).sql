-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime"
FROM
	"Common_Topology_Locations" t
FETCH NEXT 1 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t."StartDateTime",
	t."PreNotification",
	t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime"
FROM
	"Common_Topology_Locations" t
FETCH NEXT 1 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	EXTRACT(HOUR FROM (t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7))) = 13
FETCH NEXT 1 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	EXTRACT(MINUTE FROM (t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7))) = 51
FETCH NEXT 1 ROWS ONLY

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "NotificationDateTime"
FROM
	"Common_Topology_Locations" t
WHERE
	EXTRACT(SECOND FROM (t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7))) >= 52 AND
	EXTRACT(SECOND FROM (t."StartDateTime" + -((CAST(t."PreNotification" AS Number(19)) - MOD(CAST(t."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(t."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7))) <= 54
FETCH NEXT 1 ROWS ONLY

