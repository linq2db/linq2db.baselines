-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."StartDateTime",
	"t1"."EndDateTime",
	"t1"."RequiredDateTime",
	"t1"."PreNotification",
	"t1"."RequiredInterval"
FROM
	"Common_Topology_Locations" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	DateAdd(Millisecond, (Mod(CAST("row_1"."PreNotification" AS BigInt), 864000000000) - Mod(Mod(CAST("row_1"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST("row_1"."PreNotification" AS BigInt) - Mod(CAST("row_1"."PreNotification" AS BigInt), 864000000000)) / 864000000000, "row_1"."StartDateTime")),
	DateAdd(Millisecond, (Mod(CAST("row_1"."RequiredInterval" AS BigInt), 864000000000) - Mod(Mod(CAST("row_1"."RequiredInterval" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST("row_1"."RequiredInterval" AS BigInt) - Mod(CAST("row_1"."RequiredInterval" AS BigInt), 864000000000)) / 864000000000, "row_1"."RequiredDateTime")),
	DateAdd(Millisecond, (Mod(CAST("row_1"."RequiredInterval" AS BigInt), 864000000000) - Mod(Mod(CAST("row_1"."RequiredInterval" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST("row_1"."RequiredInterval" AS BigInt) - Mod(CAST("row_1"."RequiredInterval" AS BigInt), 864000000000)) / 864000000000, "row_1"."StartDateTime")),
	DateAdd(Millisecond, (Mod(CAST("row_1"."PreNotification" AS BigInt), 864000000000) - Mod(Mod(CAST("row_1"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, (CAST("row_1"."PreNotification" AS BigInt) - Mod(CAST("row_1"."PreNotification" AS BigInt), 864000000000)) / 864000000000, "row_1"."RequiredDateTime")),
	DateAdd(Millisecond, (-Mod(CAST("row_1"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("row_1"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("row_1"."PreNotification" AS BigInt) - Mod(CAST("row_1"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "row_1"."StartDateTime")),
	-"row_1"."PreNotification",
	CAST(DATEDIFF(millisecond, "row_1"."StartDateTime", "row_1"."EndDateTime") * 10000 AS BIGINT),
	CAST(DATEDIFF(millisecond, "row_1"."RequiredDateTime", "row_1"."EndDateTime") * 10000 AS BIGINT),
	CAST(DATEDIFF(millisecond, "row_1"."StartDateTime", "row_1"."RequiredDateTime") * 10000 AS BIGINT)
FROM
	"Common_Topology_Locations" "row_1"
FETCH NEXT 2 ROWS ONLY

