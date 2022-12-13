BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1799Table1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1799Table1"
(
	"EventUser" Integer   NOT NULL,
	"ProcessID" Integer   NOT NULL,
	"EventTime" Timestamp NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1799Table2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1799Table2"
(
	"UserId"     Integer       NOT NULL,
	"UserGroups" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1799Table3"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1799Table3"
(
	"ProcessID"   Integer       NOT NULL,
	"ProcessName" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	"t1"."User_1",
	"t1"."ProcessName",
	"t1"."UserGroups",
	Sum("t1"."Diff")
FROM
	(
		SELECT
			"x"."EventUser" as "User_1",
			"u"."UserGroups",
			"p"."ProcessName",
			Seconds_Between(LAG("x"."EventTime") OVER(PARTITION BY "x"."EventUser", "x"."ProcessID" ORDER BY "x"."EventTime"), "x"."EventTime") / 60 as "Diff"
		FROM
			"Issue1799Table1" "x"
				INNER JOIN "Issue1799Table2" "u" ON "u"."UserId" = "x"."EventUser"
				INNER JOIN "Issue1799Table3" "p" ON "p"."ProcessID" = "x"."ProcessID"
	) "t1"
GROUP BY
	"t1"."User_1",
	"t1"."UserGroups",
	"t1"."ProcessName"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1799Table3"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1799Table2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1799Table1"

