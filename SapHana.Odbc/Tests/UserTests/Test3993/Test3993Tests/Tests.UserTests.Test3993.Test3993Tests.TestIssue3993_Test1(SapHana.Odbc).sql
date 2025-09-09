BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Nano100("t"."StartDateTime", -"t"."PreNotification" )
FROM
	"Common_Topology_Locations" "t"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."StartDateTime",
	"t1"."StartDateTime2",
	"t1"."EndDateTime",
	"t1"."PreNotification",
	"t1"."PreNotification2",
	"t1"."PreNotification3",
	"t1"."StrField",
	"t1"."Status"
FROM
	"Common_Topology_Locations" "t1"

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
	Year("x"."StartDateTime2") = 2023

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value BigInt -- Int64
SET     @Value = 3000000000

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
	Add_Nano100("x"."StartDateTime2", ?) > '2025-08-31 18:53:14.596'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value BigInt -- Int64
SET     @Value = 31536000000000000

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
	Add_Nano100("x"."StartDateTime2", ?) > '2025-08-31 18:53:14.614'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST("x"."PreNotification" / 10000 AS Double),
	CAST("x"."PreNotification" / 10000000 AS Double)
FROM
	"Common_Topology_Locations" "x"
WHERE
	CAST("x"."PreNotification" / 10000000 AS Double) < CAST("x"."PreNotification" / 10000 AS Double)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification" / 10000)) * 10000) as "NotificationDateTime",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification2" / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification3" / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification3" ) as "NotificationDateTime4",
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification" ) as "NotificationDateTime5",
			Add_Nano100("t"."StartDateTime", "t"."PreNotification" ) as "NotificationDateTime6",
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification" ) as "NotificationDateTime7",
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification3" ) as "Value_1",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime" < '2020-02-29 17:54:55.123'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification2" / 10000)) * 10000) as "NotificationDateTime2",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification" / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification3" / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification3" ) as "NotificationDateTime4",
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification" ) as "NotificationDateTime5",
			Add_Nano100("t"."StartDateTime", "t"."PreNotification" ) as "NotificationDateTime6",
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification" ) as "NotificationDateTime7",
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification3" ) as "Value_1",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime2" < '2020-02-29 17:54:55.123'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification3" ) as "NotificationDateTime4",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification" / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification2" / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification3" / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification" ) as "NotificationDateTime5",
			Add_Nano100("t"."StartDateTime", "t"."PreNotification" ) as "NotificationDateTime6",
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification" ) as "NotificationDateTime7",
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification3" ) as "Value_1",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime4" < '2020-02-29 17:54:55.123'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification" ) as "NotificationDateTime5",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification" / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification2" / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification3" / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification3" ) as "NotificationDateTime4",
			Add_Nano100("t"."StartDateTime", "t"."PreNotification" ) as "NotificationDateTime6",
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification" ) as "NotificationDateTime7",
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification3" ) as "Value_1",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime5" < '2020-02-29 17:54:55.123'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("t"."StartDateTime", "t"."PreNotification" ) as "NotificationDateTime6",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification" / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification2" / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification3" / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification3" ) as "NotificationDateTime4",
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification" ) as "NotificationDateTime5",
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification" ) as "NotificationDateTime7",
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification3" ) as "Value_1",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime6" < '2020-02-29 17:54:55.123'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification" ) as "NotificationDateTime7",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification" / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification2" / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification3" / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification3" ) as "NotificationDateTime4",
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification" ) as "NotificationDateTime5",
			Add_Nano100("t"."StartDateTime", "t"."PreNotification" ) as "NotificationDateTime6",
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification3" ) as "Value_1",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime7" < '2020-02-29 17:54:55.123'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	"x"."NotificationDateTime",
	"x"."NotificationDateTime2",
	"x"."NotificationDateTime3",
	"x"."NotificationDateTime4",
	"x"."NotificationDateTime5",
	"x"."NotificationDateTime6",
	"x"."NotificationDateTime7",
	"x"."Value_1",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification3" ) as "Value_1",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification" / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification2" / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("t"."StartDateTime", (-1 * ("t"."PreNotification3" / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification3" ) as "NotificationDateTime4",
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification" ) as "NotificationDateTime5",
			Add_Nano100("t"."StartDateTime", "t"."PreNotification" ) as "NotificationDateTime6",
			Add_Nano100("t"."StartDateTime2", -"t"."PreNotification" ) as "NotificationDateTime7",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."Value_1" < '2020-02-29 17:54:55.123'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."NotificationDateTime4"
FROM
	(
		SELECT
			Add_Nano100("t"."StartDateTime", -"t"."PreNotification3" ) as "NotificationDateTime4"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime4" < '2020-02-29 17:54:55.123'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Nano100_Between("t"."StartDateTime", "t"."EndDateTime")
FROM
	"Common_Topology_Locations" "t"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Nano100_Between("x"."StartDateTime", "x"."EndDateTime")
FROM
	"Common_Topology_Locations" "x"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p BigInt -- Int64
SET     @p = 180000000000

SELECT
	"x"."diff"
FROM
	(
		SELECT
			Nano100_Between("t"."StartDateTime", "t"."EndDateTime") as "diff"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."diff" < ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Nano100_Between("x"."StartDateTime", "x"."EndDateTime")
FROM
	"Common_Topology_Locations" "x"
WHERE
	CAST(Nano100_Between("x"."StartDateTime", "x"."EndDateTime") / 36000000000 AS Double) < 5

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p BigInt -- Int64
SET     @p = 72000000000

SELECT
	"x"."diff"
FROM
	(
		SELECT
			Nano100_Between("t"."StartDateTime", "t"."EndDateTime") as "diff"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."diff" < ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Nano100_Between("x"."StartDateTime", "x"."EndDateTime")
FROM
	"Common_Topology_Locations" "x"
WHERE
	CAST(Nano100_Between("x"."StartDateTime", "x"."EndDateTime") / 36000000000 AS Double) < 2

