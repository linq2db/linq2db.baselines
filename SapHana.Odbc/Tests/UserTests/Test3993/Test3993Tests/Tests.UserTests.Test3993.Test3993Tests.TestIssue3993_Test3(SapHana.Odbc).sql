-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000))
FROM
	"Common_Topology_Locations" "t"
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."StartDateTime",
	"t"."PreNotification",
	Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000))
FROM
	"Common_Topology_Locations" "t"
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000))
FROM
	"Common_Topology_Locations" "t"
WHERE
	Hour(Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000))) = 13
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000))
FROM
	"Common_Topology_Locations" "t"
WHERE
	Minute(Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000))) = 51
LIMIT 1

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t"."StartDateTime",
	"t"."StartDateTime2",
	"t"."EndDateTime",
	"t"."PreNotification",
	"t"."PreNotification2",
	"t"."PreNotification3",
	"t"."StrField",
	"t"."Status",
	Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000))
FROM
	"Common_Topology_Locations" "t"
WHERE
	Second(Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000))) >= 52 AND
	Second(Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000))) <= 54
LIMIT 1

