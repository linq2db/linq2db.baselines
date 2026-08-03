-- Firebird.4 Firebird4
SELECT
	"row_1"."Id",
	CAST((CAST("row_1"."PreNotification" AS BigInt) - Mod(CAST("row_1"."PreNotification" AS BigInt), 864000000000)) / 864000000000 AS Int),
	CAST(Mod((CAST("row_1"."PreNotification" AS BigInt) - Mod(CAST("row_1"."PreNotification" AS BigInt), 36000000000)) / 36000000000, 24) AS Int),
	CAST(Mod((CAST("row_1"."PreNotification" AS BigInt) - Mod(CAST("row_1"."PreNotification" AS BigInt), 600000000)) / 600000000, 60) AS Int),
	CAST(Mod((CAST("row_1"."PreNotification" AS BigInt) - Mod(CAST("row_1"."PreNotification" AS BigInt), 10000000)) / 10000000, 60) AS Int),
	CAST(Mod((CAST("row_1"."PreNotification" AS BigInt) - Mod(CAST("row_1"."PreNotification" AS BigInt), 10000)) / 10000, 1000) AS Int),
	CAST("row_1"."PreNotification" AS BigInt),
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 864000000000,
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 36000000000,
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 600000000,
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10000000,
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10000,
	CAST(Mod((CAST("row_1"."PreNotification" AS BigInt) - Mod(CAST("row_1"."PreNotification" AS BigInt), 10)) / 10, 1000) AS Int),
	CAST(Mod(CAST("row_1"."PreNotification" AS BigInt) * 100, 1000) AS Int),
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS DOUBLE PRECISION) / 10,
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS DOUBLE PRECISION) * 100
FROM
	"Common_Topology_Locations" "row_1"
ORDER BY
	"row_1"."Id"

