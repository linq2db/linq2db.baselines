BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Common_Topology_Locations"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Common_Topology_Locations"
(
	"StartDateTime"    Timestamp         NULL,
	"StartDateTime2"   Timestamp     NOT NULL,
	"EndDateTime"      Timestamp         NULL,
	"PreNotification"  BigInt            NULL,
	"PreNotification2" BigInt            NULL,
	"PreNotification3" BigInt        NOT NULL,
	"StrField"         Timestamp         NULL,
	"Status"           NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @StartDateTime  -- DateTime
SET     @StartDateTime = '2020-02-29 17:54:55.123'
DECLARE @StartDateTime2  -- DateTime
SET     @StartDateTime2 = '2020-02-29 17:54:55.123'
DECLARE @EndDateTime  -- DateTime
SET     @EndDateTime = '2020-02-29 21:54:55.123'
DECLARE @PreNotification  -- Int64
SET     @PreNotification = 200000000000
DECLARE @PreNotification2  -- Int64
SET     @PreNotification2 = 200000000000
DECLARE @PreNotification3  -- Int64
SET     @PreNotification3 = 200000000000
DECLARE @StrField  -- DateTime
SET     @StrField = '2020-02-29'
DECLARE @Status NVarChar -- String
SET     @Status = NULL

INSERT INTO "Common_Topology_Locations"
(
	"StartDateTime",
	"StartDateTime2",
	"EndDateTime",
	"PreNotification",
	"PreNotification2",
	"PreNotification3",
	"StrField",
	"Status"
)
VALUES
(
	?,
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

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
DECLARE @p  -- Int64
SET     @p = 3000000000
DECLARE @UtcNow  -- DateTime
SET     @UtcNow = '2024-06-15 01:03:11.271'

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
	Add_Nano100("x"."StartDateTime2", ?) > ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int64
SET     @p = 31536000000000000
DECLARE @UtcNow  -- DateTime
SET     @UtcNow = '2024-06-15 01:03:11.292'

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
	Add_Nano100("x"."StartDateTime2", ?) > ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x_1"."t1",
	"x_1"."t2"
FROM
	(
		SELECT
			CAST("x"."PreNotification" / 10000000 AS Double) as "t2",
			CAST("x"."PreNotification" / 10000 AS Double) as "t1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."t2" < "x_1"."t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @DateTime4Utc  -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification" / 10000)) * 10000),
	Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification2" / 10000)) * 10000),
	Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification3" / 10000)) * 10000),
	Add_Nano100("x"."StartDateTime", -"x"."PreNotification3" ),
	Add_Nano100("x"."StartDateTime", -"x"."PreNotification" ),
	Add_Nano100("x"."StartDateTime", "x"."PreNotification" ),
	Add_Nano100("x"."StartDateTime2", -"x"."PreNotification" ),
	Add_Nano100("x"."StartDateTime2", -"x"."PreNotification3" ),
	DayOfMonth("x"."StrField")
FROM
	"Common_Topology_Locations" "x"
WHERE
	Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification" / 10000)) * 10000) < ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @DateTime4Utc  -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	"x"."StartDateTime",
	"x"."PreNotification",
	Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification" / 10000)) * 10000),
	Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification2" / 10000)) * 10000),
	Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification3" / 10000)) * 10000),
	Add_Nano100("x"."StartDateTime", -"x"."PreNotification3" ),
	Add_Nano100("x"."StartDateTime", -"x"."PreNotification" ),
	Add_Nano100("x"."StartDateTime", "x"."PreNotification" ),
	Add_Nano100("x"."StartDateTime2", -"x"."PreNotification" ),
	Add_Nano100("x"."StartDateTime2", -"x"."PreNotification3" ),
	DayOfMonth("x"."StrField")
FROM
	"Common_Topology_Locations" "x"
WHERE
	Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification2" / 10000)) * 10000) < ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @DateTime4Utc  -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	"x_1"."StartDateTime",
	"x_1"."PreNotification",
	"x_1"."NotificationDateTime",
	"x_1"."NotificationDateTime2",
	"x_1"."NotificationDateTime3",
	"x_1"."NotificationDateTime4",
	"x_1"."NotificationDateTime5",
	"x_1"."NotificationDateTime6",
	"x_1"."NotificationDateTime7",
	"x_1"."NotificationDateTime8",
	"x_1"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("x"."StartDateTime", -"x"."PreNotification3" ) as "NotificationDateTime4",
			"x"."StartDateTime",
			"x"."PreNotification",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification" / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification2" / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification3" / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100("x"."StartDateTime", -"x"."PreNotification" ) as "NotificationDateTime5",
			Add_Nano100("x"."StartDateTime", "x"."PreNotification" ) as "NotificationDateTime6",
			Add_Nano100("x"."StartDateTime2", -"x"."PreNotification" ) as "NotificationDateTime7",
			Add_Nano100("x"."StartDateTime2", -"x"."PreNotification3" ) as "NotificationDateTime8",
			DayOfMonth("x"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime4" < ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @DateTime4Utc  -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	"x_1"."StartDateTime",
	"x_1"."PreNotification",
	"x_1"."NotificationDateTime",
	"x_1"."NotificationDateTime2",
	"x_1"."NotificationDateTime3",
	"x_1"."NotificationDateTime4",
	"x_1"."NotificationDateTime5",
	"x_1"."NotificationDateTime6",
	"x_1"."NotificationDateTime7",
	"x_1"."NotificationDateTime8",
	"x_1"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("x"."StartDateTime", -"x"."PreNotification" ) as "NotificationDateTime5",
			"x"."StartDateTime",
			"x"."PreNotification",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification" / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification2" / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification3" / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100("x"."StartDateTime", -"x"."PreNotification3" ) as "NotificationDateTime4",
			Add_Nano100("x"."StartDateTime", "x"."PreNotification" ) as "NotificationDateTime6",
			Add_Nano100("x"."StartDateTime2", -"x"."PreNotification" ) as "NotificationDateTime7",
			Add_Nano100("x"."StartDateTime2", -"x"."PreNotification3" ) as "NotificationDateTime8",
			DayOfMonth("x"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime5" < ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @DateTime4Utc  -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	"x_1"."StartDateTime",
	"x_1"."PreNotification",
	"x_1"."NotificationDateTime",
	"x_1"."NotificationDateTime2",
	"x_1"."NotificationDateTime3",
	"x_1"."NotificationDateTime4",
	"x_1"."NotificationDateTime5",
	"x_1"."NotificationDateTime6",
	"x_1"."NotificationDateTime7",
	"x_1"."NotificationDateTime8",
	"x_1"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("x"."StartDateTime", "x"."PreNotification" ) as "NotificationDateTime6",
			"x"."StartDateTime",
			"x"."PreNotification",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification" / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification2" / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification3" / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100("x"."StartDateTime", -"x"."PreNotification3" ) as "NotificationDateTime4",
			Add_Nano100("x"."StartDateTime", -"x"."PreNotification" ) as "NotificationDateTime5",
			Add_Nano100("x"."StartDateTime2", -"x"."PreNotification" ) as "NotificationDateTime7",
			Add_Nano100("x"."StartDateTime2", -"x"."PreNotification3" ) as "NotificationDateTime8",
			DayOfMonth("x"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime6" < ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @DateTime4Utc  -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	"x_1"."StartDateTime",
	"x_1"."PreNotification",
	"x_1"."NotificationDateTime",
	"x_1"."NotificationDateTime2",
	"x_1"."NotificationDateTime3",
	"x_1"."NotificationDateTime4",
	"x_1"."NotificationDateTime5",
	"x_1"."NotificationDateTime6",
	"x_1"."NotificationDateTime7",
	"x_1"."NotificationDateTime8",
	"x_1"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("x"."StartDateTime2", -"x"."PreNotification" ) as "NotificationDateTime7",
			"x"."StartDateTime",
			"x"."PreNotification",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification" / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification2" / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification3" / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100("x"."StartDateTime", -"x"."PreNotification3" ) as "NotificationDateTime4",
			Add_Nano100("x"."StartDateTime", -"x"."PreNotification" ) as "NotificationDateTime5",
			Add_Nano100("x"."StartDateTime", "x"."PreNotification" ) as "NotificationDateTime6",
			Add_Nano100("x"."StartDateTime2", -"x"."PreNotification3" ) as "NotificationDateTime8",
			DayOfMonth("x"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime7" < ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @DateTime4Utc  -- DateTime
SET     @DateTime4Utc = '2020-02-29 17:54:55.123'

SELECT
	"x_1"."StartDateTime",
	"x_1"."PreNotification",
	"x_1"."NotificationDateTime",
	"x_1"."NotificationDateTime2",
	"x_1"."NotificationDateTime3",
	"x_1"."NotificationDateTime4",
	"x_1"."NotificationDateTime5",
	"x_1"."NotificationDateTime6",
	"x_1"."NotificationDateTime7",
	"x_1"."NotificationDateTime8",
	"x_1"."Day_1"
FROM
	(
		SELECT
			Add_Nano100("x"."StartDateTime2", -"x"."PreNotification3" ) as "NotificationDateTime8",
			"x"."StartDateTime",
			"x"."PreNotification",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification" / 10000)) * 10000) as "NotificationDateTime",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification2" / 10000)) * 10000) as "NotificationDateTime2",
			Add_Nano100("x"."StartDateTime", (-1 * ("x"."PreNotification3" / 10000)) * 10000) as "NotificationDateTime3",
			Add_Nano100("x"."StartDateTime", -"x"."PreNotification3" ) as "NotificationDateTime4",
			Add_Nano100("x"."StartDateTime", -"x"."PreNotification" ) as "NotificationDateTime5",
			Add_Nano100("x"."StartDateTime", "x"."PreNotification" ) as "NotificationDateTime6",
			Add_Nano100("x"."StartDateTime2", -"x"."PreNotification" ) as "NotificationDateTime7",
			DayOfMonth("x"."StrField") as "Day_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime8" < ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @DateTimeUtc  -- DateTime
SET     @DateTimeUtc = '2020-02-29 17:54:55.123'

SELECT
	"x_1"."NotificationDateTime4"
FROM
	(
		SELECT
			Add_Nano100("x"."StartDateTime", -"x"."PreNotification3" ) as "NotificationDateTime4"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."NotificationDateTime4" < ?

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
DECLARE @p  -- Int64
SET     @p = 180000000000

SELECT
	"x_1"."diff"
FROM
	(
		SELECT
			Nano100_Between("x"."StartDateTime", "x"."EndDateTime") as "diff"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."diff" < ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x_1"."Value_1"
FROM
	(
		SELECT
			Nano100_Between("x"."StartDateTime", "x"."EndDateTime") as "Value_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	CAST("x_1"."Value_1" / 36000000000 AS Double) < 5

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int64
SET     @p = 72000000000

SELECT
	"x_1"."diff"
FROM
	(
		SELECT
			Nano100_Between("x"."StartDateTime", "x"."EndDateTime") as "diff"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	"x_1"."diff" < ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x_1"."Value_1"
FROM
	(
		SELECT
			Nano100_Between("x"."StartDateTime", "x"."EndDateTime") as "Value_1"
		FROM
			"Common_Topology_Locations" "x"
	) "x_1"
WHERE
	CAST("x_1"."Value_1" / 36000000000 AS Double) < 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Common_Topology_Locations"

