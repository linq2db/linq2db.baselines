-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."StartDateTime",
	t1."EndDateTime",
	t1."RequiredDateTime",
	t1."PreNotification",
	t1."RequiredInterval"
FROM
	"Common_Topology_Locations" t1
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	row_1."StartDateTime" + ((CAST(row_1."PreNotification" AS Number(19)) - MOD(CAST(row_1."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(row_1."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7),
	row_1."RequiredDateTime" + ((CAST(row_1."RequiredInterval" AS Number(19)) - MOD(CAST(row_1."RequiredInterval" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(row_1."RequiredInterval" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7),
	row_1."StartDateTime" + ((CAST(row_1."RequiredInterval" AS Number(19)) - MOD(CAST(row_1."RequiredInterval" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(row_1."RequiredInterval" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7),
	row_1."RequiredDateTime" + ((CAST(row_1."PreNotification" AS Number(19)) - MOD(CAST(row_1."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(row_1."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7),
	row_1."StartDateTime" + -((CAST(row_1."PreNotification" AS Number(19)) - MOD(CAST(row_1."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(row_1."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7),
	-row_1."PreNotification",
	CAST(row_1."EndDateTime" AS TIMESTAMP) - CAST(row_1."StartDateTime" AS TIMESTAMP),
	CAST(row_1."EndDateTime" AS TIMESTAMP) - CAST(row_1."RequiredDateTime" AS TIMESTAMP),
	CAST(row_1."RequiredDateTime" AS TIMESTAMP) - CAST(row_1."StartDateTime" AS TIMESTAMP)
FROM
	"Common_Topology_Locations" row_1
WHERE
	ROWNUM <= 2

