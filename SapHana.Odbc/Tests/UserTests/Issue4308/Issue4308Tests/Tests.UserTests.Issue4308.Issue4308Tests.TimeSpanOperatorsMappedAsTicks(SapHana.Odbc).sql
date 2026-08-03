-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."StartDateTime",
	"t1"."EndDateTime",
	"t1"."RequiredDateTime",
	"t1"."PreNotification",
	"t1"."RequiredInterval"
FROM
	"Common_Topology_Locations" "t1"
LIMIT 2

-- SapHana.Odbc SapHanaOdbc
SELECT
	Add_Nano100(Add_Days("row_1"."StartDateTime", (CAST("row_1"."PreNotification" AS BigInt) - MOD(CAST("row_1"."PreNotification" AS BigInt), 864000000000)) / 864000000000), MOD(CAST("row_1"."PreNotification" AS BigInt), 864000000000)),
	Add_Nano100(Add_Days("row_1"."RequiredDateTime", (CAST("row_1"."RequiredInterval" AS BigInt) - MOD(CAST("row_1"."RequiredInterval" AS BigInt), 864000000000)) / 864000000000), MOD(CAST("row_1"."RequiredInterval" AS BigInt), 864000000000)),
	Add_Nano100(Add_Days("row_1"."StartDateTime", (CAST("row_1"."RequiredInterval" AS BigInt) - MOD(CAST("row_1"."RequiredInterval" AS BigInt), 864000000000)) / 864000000000), MOD(CAST("row_1"."RequiredInterval" AS BigInt), 864000000000)),
	Add_Nano100(Add_Days("row_1"."RequiredDateTime", (CAST("row_1"."PreNotification" AS BigInt) - MOD(CAST("row_1"."PreNotification" AS BigInt), 864000000000)) / 864000000000), MOD(CAST("row_1"."PreNotification" AS BigInt), 864000000000)),
	Add_Nano100(Add_Days("row_1"."StartDateTime", -((CAST("row_1"."PreNotification" AS BigInt) - MOD(CAST("row_1"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("row_1"."PreNotification" AS BigInt), 864000000000)),
	-"row_1"."PreNotification",
	Nano100_Between("row_1"."StartDateTime", "row_1"."EndDateTime"),
	Nano100_Between("row_1"."RequiredDateTime", "row_1"."EndDateTime"),
	Nano100_Between("row_1"."StartDateTime", "row_1"."RequiredDateTime")
FROM
	"Common_Topology_Locations" "row_1"
LIMIT 2

