BeforeExecute
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
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification" ) as "NotificationDateTime",
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
	"x"."NotificationDateTime" < '2025-08-31 18:53:15.054' AND
	To_Date("x"."StartDateTime") < To_Date('2025-08-31 18:53:15.054')

