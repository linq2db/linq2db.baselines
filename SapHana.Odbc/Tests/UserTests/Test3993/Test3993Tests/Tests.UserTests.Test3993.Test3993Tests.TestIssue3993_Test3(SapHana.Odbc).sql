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
SET     @StartDateTime2 = '0001-01-01'
DECLARE @EndDateTime  -- DateTime
SET     @EndDateTime = NULL
DECLARE @PreNotification  -- Int64
SET     @PreNotification = 145820000000
DECLARE @PreNotification2  -- Int64
SET     @PreNotification2 = NULL
DECLARE @PreNotification3  -- Int64
SET     @PreNotification3 = 0
DECLARE @StrField  -- DateTime
SET     @StrField = NULL
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
	"t1"."StartDateTime",
	"t1"."StartDateTime2",
	"t1"."EndDateTime",
	"t1"."PreNotification",
	"t1"."PreNotification2",
	"t1"."PreNotification3",
	"t1"."StrField",
	"t1"."Status",
	"t1"."NotificationDateTime"
FROM
	(
		SELECT
			Second(Add_Nano100("x"."StartDateTime", -"x"."PreNotification" )) as "Second_1",
			"x"."StartDateTime",
			"x"."StartDateTime2",
			"x"."EndDateTime",
			"x"."PreNotification",
			"x"."PreNotification2",
			"x"."PreNotification3",
			"x"."StrField",
			"x"."Status",
			Add_Nano100("x"."StartDateTime", -"x"."PreNotification" ) as "NotificationDateTime"
		FROM
			"Common_Topology_Locations" "x"
	) "t1"
WHERE
	"t1"."Second_1" >= 52 AND "t1"."Second_1" <= 54
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Common_Topology_Locations"

