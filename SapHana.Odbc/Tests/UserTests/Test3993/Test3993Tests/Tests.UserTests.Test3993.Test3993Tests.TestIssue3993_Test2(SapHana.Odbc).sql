-- SapHana.Odbc SapHanaOdbc
SELECT
	"x"."StartDateTime",
	"x"."StartDateTime2",
	"x"."EndDateTime",
	"x"."PreNotification",
	"x"."PreNotification2",
	"x"."PreNotification3",
	"x"."StrField",
	"x"."Status",
	"x"."NotificationDateTime"
FROM
	(
		SELECT
			"t"."Status",
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime",
			"t"."StartDateTime",
			"t"."StartDateTime2",
			"t"."EndDateTime",
			"t"."PreNotification",
			"t"."PreNotification2",
			"t"."PreNotification3",
			"t"."StrField"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	("x"."Status" <> 'New' OR "x"."Status" IS NULL) AND
	("x"."Status" <> 'Completed' OR "x"."Status" IS NULL) AND
	"x"."NotificationDateTime" < CURRENT_UTCTIMESTAMP AND
	To_Date("x"."StartDateTime") < To_Date(CURRENT_UTCTIMESTAMP)

