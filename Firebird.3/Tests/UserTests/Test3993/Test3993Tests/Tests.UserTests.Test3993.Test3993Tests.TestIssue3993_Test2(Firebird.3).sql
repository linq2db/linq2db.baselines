BeforeExecute
-- Firebird.3 Firebird3

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
			DateAdd(Millisecond, -"t"."PreNotification" / 10000, "t"."StartDateTime") as "NotificationDateTime",
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
	"x"."NotificationDateTime" < CAST('2025-08-31 17:52:48.322' AS timestamp) AND
	CAST("x"."StartDateTime" AS Date) < CAST(CAST('2025-08-31 17:52:48.322' AS timestamp) AS Date)

