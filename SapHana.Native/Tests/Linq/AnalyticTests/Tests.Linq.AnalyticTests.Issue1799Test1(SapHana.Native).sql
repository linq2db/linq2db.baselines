-- SapHana.Native SapHana
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	"g_1"."User_1",
	"p"."ProcessName",
	"u"."UserGroups",
	CAST(SUM("g_1"."Diff") / 60 AS Integer)
FROM
	(
		SELECT
			CAST(Seconds_Between(LAG("x"."EventTime") OVER (PARTITION BY "x"."EventUser", "x"."ProcessID" ORDER BY "x"."EventTime"), "x"."EventTime") / 60 AS BigInt) as "Diff",
			"x"."EventUser" as "User_1",
			"x"."ProcessID" as "Proc"
		FROM
			"Issue1799Table1" "x"
	) "g_1"
		INNER JOIN "Issue1799Table2" "u" ON "u"."UserId" = "g_1"."User_1"
		INNER JOIN "Issue1799Table3" "p" ON "p"."ProcessID" = "g_1"."Proc"
WHERE
	"g_1"."Diff" > 0 AND "g_1"."Diff" <= 5
GROUP BY
	"g_1"."User_1",
	"u"."UserGroups",
	"p"."ProcessName"
LIMIT :"take"

