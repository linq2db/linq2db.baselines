BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue1799Table1"
(
	"EventUser" Integer   NOT NULL,
	"ProcessID" Integer   NOT NULL,
	"EventTime" Timestamp NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue1799Table2"
(
	"UserId"     Integer       NOT NULL,
	"UserGroups" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Issue1799Table3"
(
	"ProcessID"   Integer       NOT NULL,
	"ProcessName" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	"q"."User_1",
	"p"."ProcessName",
	"u"."UserGroups",
	Sum("q"."Diff")
FROM
	(
		SELECT
			Seconds_Between(LAG("x"."EventTime") OVER(PARTITION BY "x"."EventUser", "x"."ProcessID" ORDER BY "x"."EventTime"), "x"."EventTime") / 60 as "Diff",
			"x"."EventUser" as "User_1",
			"x"."ProcessID" as "Proc"
		FROM
			"Issue1799Table1" "x"
	) "q"
		INNER JOIN "Issue1799Table2" "u" ON "u"."UserId" = "q"."User_1"
		INNER JOIN "Issue1799Table3" "p" ON "p"."ProcessID" = "q"."Proc"
WHERE
	"q"."Diff" > 0 AND "q"."Diff" <= 5
GROUP BY
	"q"."User_1",
	"u"."UserGroups",
	"p"."ProcessName"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue1799Table3"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue1799Table2"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Issue1799Table1"

