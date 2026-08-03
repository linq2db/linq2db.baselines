-- Firebird.4 Firebird4
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
			DateAdd(Millisecond, (-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000) - Mod(-Mod(CAST("t"."PreNotification" AS BigInt), 864000000000), 10000)) / 10000, DateAdd(Day, -((CAST("t"."PreNotification" AS BigInt) - Mod(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), "t"."StartDateTime")) as "NotificationDateTime",
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
	"x"."NotificationDateTime" < CURRENT_TIMESTAMP AT TIME ZONE 'UTC' AND
	CAST("x"."StartDateTime" AS Date) < CAST(CURRENT_TIMESTAMP AT TIME ZONE 'UTC' AS Date)

