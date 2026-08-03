-- SapHana.Odbc SapHanaOdbc
SELECT
	Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000))
FROM
	"Common_Topology_Locations" "t"

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

-- SapHana.Odbc SapHanaOdbc
DECLARE @p BigInt -- Int64
SET     @p = 3000000000
DECLARE @p BigInt -- Int64
SET     @p = 3000000000
DECLARE @p BigInt -- Int64
SET     @p = 3000000000

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
	Add_Nano100(Add_Days("x"."StartDateTime2", (CAST(? AS BigInt) - MOD(CAST(? AS BigInt), 864000000000)) / 864000000000), MOD(CAST(? AS BigInt), 864000000000)) > CURRENT_UTCTIMESTAMP

-- SapHana.Odbc SapHanaOdbc
DECLARE @p BigInt -- Int64
SET     @p = 31536000000000000
DECLARE @p BigInt -- Int64
SET     @p = 31536000000000000
DECLARE @p BigInt -- Int64
SET     @p = 31536000000000000

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
	Add_Nano100(Add_Days("x"."StartDateTime2", (CAST(? AS BigInt) - MOD(CAST(? AS BigInt), 864000000000)) / 864000000000), MOD(CAST(? AS BigInt), 864000000000)) > CURRENT_UTCTIMESTAMP

-- SapHana.Odbc SapHanaOdbc
SELECT
	CAST(CAST("x"."PreNotification" AS BigInt) AS Double) / 10000,
	CAST(CAST("x"."PreNotification" AS BigInt) AS Double) / 10000000
FROM
	"Common_Topology_Locations" "x"
WHERE
	CAST(CAST("x"."PreNotification" AS BigInt) AS Double) / 10000000 < CAST(CAST("x"."PreNotification" AS BigInt) AS Double) / 10000

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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime4",
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime5",
			Add_Nano100(Add_Days("t"."StartDateTime", (CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime6",
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime7",
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime8",
			Add_Nano100(Add_Days("t"."StartDateTime2", (CAST(-"t"."PreNotification3" AS BigInt) - MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime9",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime" < TIMESTAMP '2020-02-29 17:54:55.1231000'

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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime2",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime4",
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime5",
			Add_Nano100(Add_Days("t"."StartDateTime", (CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime6",
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime7",
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime8",
			Add_Nano100(Add_Days("t"."StartDateTime2", (CAST(-"t"."PreNotification3" AS BigInt) - MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime9",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime2" < TIMESTAMP '2020-02-29 17:54:55.1231000'

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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime4",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime5",
			Add_Nano100(Add_Days("t"."StartDateTime", (CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime6",
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime7",
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime8",
			Add_Nano100(Add_Days("t"."StartDateTime2", (CAST(-"t"."PreNotification3" AS BigInt) - MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime9",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime4" < TIMESTAMP '2020-02-29 17:54:55.1231000'

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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime5",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime4",
			Add_Nano100(Add_Days("t"."StartDateTime", (CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime6",
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime7",
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime8",
			Add_Nano100(Add_Days("t"."StartDateTime2", (CAST(-"t"."PreNotification3" AS BigInt) - MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime9",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime5" < TIMESTAMP '2020-02-29 17:54:55.1231000'

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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100(Add_Days("t"."StartDateTime", (CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime6",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime4",
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime5",
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime7",
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime8",
			Add_Nano100(Add_Days("t"."StartDateTime2", (CAST(-"t"."PreNotification3" AS BigInt) - MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime9",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime6" < TIMESTAMP '2020-02-29 17:54:55.1231000'

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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime7",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime4",
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime5",
			Add_Nano100(Add_Days("t"."StartDateTime", (CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime6",
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime8",
			Add_Nano100(Add_Days("t"."StartDateTime2", (CAST(-"t"."PreNotification3" AS BigInt) - MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime9",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime7" < TIMESTAMP '2020-02-29 17:54:55.1231000'

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
	"x"."NotificationDateTime8",
	"x"."NotificationDateTime9",
	"x"."Day_1"
FROM
	(
		SELECT
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime8",
			"t"."StartDateTime",
			"t"."PreNotification",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification2" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("t"."StartDateTime", (-1 * (CAST(CAST("t"."PreNotification3" AS BigInt) AS Double) / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime4",
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime5",
			Add_Nano100(Add_Days("t"."StartDateTime", (CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000), MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime6",
			Add_Nano100(Add_Days("t"."StartDateTime2", -((CAST("t"."PreNotification" AS BigInt) - MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification" AS BigInt), 864000000000)) as "NotificationDateTime7",
			Add_Nano100(Add_Days("t"."StartDateTime2", (CAST(-"t"."PreNotification3" AS BigInt) - MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000), MOD(CAST(-"t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime9",
			DayOfMonth("t"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime8" < TIMESTAMP '2020-02-29 17:54:55.1231000'

-- SapHana.Odbc SapHanaOdbc
SELECT
	"x"."NotificationDateTime4"
FROM
	(
		SELECT
			Add_Nano100(Add_Days("t"."StartDateTime", -((CAST("t"."PreNotification3" AS BigInt) - MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) / 864000000000)), -MOD(CAST("t"."PreNotification3" AS BigInt), 864000000000)) as "NotificationDateTime4"
		FROM
			"Common_Topology_Locations" "t"
	) "x"
WHERE
	"x"."NotificationDateTime4" < TIMESTAMP '2020-02-29 17:54:55.1231234'

-- SapHana.Odbc SapHanaOdbc
SELECT
	Nano100_Between("t"."StartDateTime", "t"."EndDateTime")
FROM
	"Common_Topology_Locations" "t"

-- SapHana.Odbc SapHanaOdbc
SELECT
	Nano100_Between("x"."StartDateTime", "x"."EndDateTime")
FROM
	"Common_Topology_Locations" "x"

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

-- SapHana.Odbc SapHanaOdbc
SELECT
	Nano100_Between("x"."StartDateTime", "x"."EndDateTime")
FROM
	"Common_Topology_Locations" "x"
WHERE
	CAST(CAST(Nano100_Between("x"."StartDateTime", "x"."EndDateTime") AS BigInt) AS Double) / 36000000000 < 5

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

-- SapHana.Odbc SapHanaOdbc
SELECT
	Nano100_Between("x"."StartDateTime", "x"."EndDateTime")
FROM
	"Common_Topology_Locations" "x"
WHERE
	CAST(CAST(Nano100_Between("x"."StartDateTime", "x"."EndDateTime") AS BigInt) AS Double) / 36000000000 < 2

