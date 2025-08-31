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
	"x"."Status"
FROM
	"Common_Topology_Locations" "x"
WHERE
	Hour("x"."StartDateTime") = 13
LIMIT 1

