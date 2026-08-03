-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	row_1."Id",
	CAST((CAST(row_1."PreNotification" AS Number(19)) - MOD(CAST(row_1."PreNotification" AS Number(19)), 864000000000)) / 864000000000 AS Int),
	CAST(MOD((CAST(row_1."PreNotification" AS Number(19)) - MOD(CAST(row_1."PreNotification" AS Number(19)), 36000000000)) / 36000000000, 24) AS Int),
	CAST(MOD((CAST(row_1."PreNotification" AS Number(19)) - MOD(CAST(row_1."PreNotification" AS Number(19)), 600000000)) / 600000000, 60) AS Int),
	CAST(MOD((CAST(row_1."PreNotification" AS Number(19)) - MOD(CAST(row_1."PreNotification" AS Number(19)), 10000000)) / 10000000, 60) AS Int),
	CAST(MOD((CAST(row_1."PreNotification" AS Number(19)) - MOD(CAST(row_1."PreNotification" AS Number(19)), 10000)) / 10000, 1000) AS Int),
	CAST(row_1."PreNotification" AS Number(19)),
	CAST(CAST(row_1."PreNotification" AS Number(19)) AS Float) / 864000000000D,
	CAST(CAST(row_1."PreNotification" AS Number(19)) AS Float) / 36000000000D,
	CAST(CAST(row_1."PreNotification" AS Number(19)) AS Float) / 600000000D,
	CAST(CAST(row_1."PreNotification" AS Number(19)) AS Float) / 10000000D,
	CAST(CAST(row_1."PreNotification" AS Number(19)) AS Float) / 10000D,
	CAST(MOD((CAST(row_1."PreNotification" AS Number(19)) - MOD(CAST(row_1."PreNotification" AS Number(19)), 10)) / 10, 1000) AS Int),
	CAST(MOD(CAST(row_1."PreNotification" AS Number(19)) * 100, 1000) AS Int),
	CAST(CAST(row_1."PreNotification" AS Number(19)) AS Float) / 10D,
	CAST(CAST(row_1."PreNotification" AS Number(19)) AS Float) * 100D
FROM
	"Common_Topology_Locations" row_1
ORDER BY
	row_1."Id"

