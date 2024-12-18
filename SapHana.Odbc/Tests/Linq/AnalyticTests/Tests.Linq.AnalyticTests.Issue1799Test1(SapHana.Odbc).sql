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
	"g_1"."User_1",
	"p"."ProcessName",
	"u"."UserGroups",
	SUM("g_1"."Diff") / 60
FROM
	(
		SELECT
			Seconds_Between(LAG("x"."EventTime") OVER(PARTITION BY "x"."EventUser", "x"."ProcessID" ORDER BY "x"."EventTime"), "x"."EventTime") / 60 as "Diff",
			"x"."EventUser" as "User_1",
			"x"."ProcessID" as "Proc"
		FROM
			"Issue1799Table1" "x"
	) "g_1"
		INNER JOIN "Issue1799Table2" "u" ON "u"."UserId" = "g_1"."User_1"
		INNER JOIN "Issue1799Table3" "p" ON "p"."ProcessID" = "g_1"."Proc"
WHERE
	"g_1"."Diff" > 0 AND
	"g_1"."Diff" IS NOT NULL AND
	"g_1"."Diff" <= 5 AND
	"g_1"."Diff" IS NOT NULL
GROUP BY
	"g_1"."User_1",
	"u"."UserGroups",
	"p"."ProcessName"
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

