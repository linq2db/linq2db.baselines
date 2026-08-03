-- Firebird.5 Firebird4
SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime"))
FROM
	"Common_Topology_Locations" "t"
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
SELECT
	"t"."StartDateTime",
	"t"."PreNotification",
	DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime"))
FROM
	"Common_Topology_Locations" "t"
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime"))
FROM
	"Common_Topology_Locations" "t"
WHERE
	Extract(hour from DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime"))) = 13
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime"))
FROM
	"Common_Topology_Locations" "t"
WHERE
	Extract(minute from DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime"))) = 51
FETCH NEXT 1 ROWS ONLY

-- Firebird.5 Firebird4
SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime"))
FROM
	"Common_Topology_Locations" "t"
WHERE
	CAST(Floor(Extract(second from DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")))) AS Int) >= 52 AND
	CAST(Floor(Extract(second from DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")))) AS Int) <= 54
FETCH NEXT 1 ROWS ONLY

