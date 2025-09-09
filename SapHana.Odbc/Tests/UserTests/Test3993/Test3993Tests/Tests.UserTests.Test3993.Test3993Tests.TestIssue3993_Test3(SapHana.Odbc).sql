BeforeExecute
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
	Add_Nano100("t"."StartDateTime", -"t"."PreNotification" )
FROM
	"Common_Topology_Locations" "t"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."StartDateTime",
	"t"."PreNotification",
	Add_Nano100("t"."StartDateTime", -"t"."PreNotification" )
FROM
	"Common_Topology_Locations" "t"
LIMIT 1

BeforeExecute
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
	Add_Nano100("t"."StartDateTime", -"t"."PreNotification" )
FROM
	"Common_Topology_Locations" "t"
WHERE
	Hour(Add_Nano100("t"."StartDateTime", -"t"."PreNotification" )) = 13
LIMIT 1

BeforeExecute
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
	Add_Nano100("t"."StartDateTime", -"t"."PreNotification" )
FROM
	"Common_Topology_Locations" "t"
WHERE
	Minute(Add_Nano100("t"."StartDateTime", -"t"."PreNotification" )) = 51
LIMIT 1

BeforeExecute
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
	Add_Nano100("t"."StartDateTime", -"t"."PreNotification" )
FROM
	"Common_Topology_Locations" "t"
WHERE
	Second(Add_Nano100("t"."StartDateTime", -"t"."PreNotification" )) >= 52 AND
	Second(Add_Nano100("t"."StartDateTime", -"t"."PreNotification" )) <= 54
LIMIT 1

