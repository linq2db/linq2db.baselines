-- SapHana.Odbc SapHanaOdbc
SELECT
	"row_1"."Id",
	CAST((CAST("row_1"."PreNotification" AS BigInt) - MOD(CAST("row_1"."PreNotification" AS BigInt), 864000000000)) / 864000000000 AS Integer),
	CAST(MOD((CAST("row_1"."PreNotification" AS BigInt) - MOD(CAST("row_1"."PreNotification" AS BigInt), 36000000000)) / 36000000000, 24) AS Integer),
	CAST(MOD((CAST("row_1"."PreNotification" AS BigInt) - MOD(CAST("row_1"."PreNotification" AS BigInt), 600000000)) / 600000000, 60) AS Integer),
	CAST(MOD((CAST("row_1"."PreNotification" AS BigInt) - MOD(CAST("row_1"."PreNotification" AS BigInt), 10000000)) / 10000000, 60) AS Integer),
	CAST(MOD((CAST("row_1"."PreNotification" AS BigInt) - MOD(CAST("row_1"."PreNotification" AS BigInt), 10000)) / 10000, 1000) AS Integer),
	CAST("row_1"."PreNotification" AS BigInt),
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS Double) / 864000000000,
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS Double) / 36000000000,
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS Double) / 600000000,
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS Double) / 10000000,
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS Double) / 10000,
	CAST(MOD((CAST("row_1"."PreNotification" AS BigInt) - MOD(CAST("row_1"."PreNotification" AS BigInt), 10)) / 10, 1000) AS Integer),
	CAST(MOD(CAST("row_1"."PreNotification" AS BigInt) * 100, 1000) AS Integer),
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS Double) / 10,
	CAST(CAST("row_1"."PreNotification" AS BigInt) AS Double) * 100
FROM
	"Common_Topology_Locations" "row_1"
ORDER BY
	"row_1"."Id"

