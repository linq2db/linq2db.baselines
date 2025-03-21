﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."User_1",
	"p"."ProcessName",
	"u"."UserGroups",
	SUM("g_1"."Diff") / 60
FROM
	(
		SELECT
			"x"."EventUser" as "User_1",
			"x"."ProcessID",
			((Days("x"."EventTime") - Days(LAG("x"."EventTime") OVER(PARTITION BY "x"."EventUser", "x"."ProcessID" ORDER BY "x"."EventTime"))) * 86400 + MIDNIGHT_SECONDS("x"."EventTime") - MIDNIGHT_SECONDS(LAG("x"."EventTime") OVER(PARTITION BY "x"."EventUser", "x"."ProcessID" ORDER BY "x"."EventTime"))) / 60 as "Diff"
		FROM
			"Issue1799Table1" "x"
	) "g_1"
		INNER JOIN "Issue1799Table2" "u" ON "u"."UserId" = "g_1"."User_1"
		INNER JOIN "Issue1799Table3" "p" ON "p"."ProcessID" = "g_1"."ProcessID"
GROUP BY
	"g_1"."User_1",
	"u"."UserGroups",
	"p"."ProcessName"
FETCH NEXT 10 ROWS ONLY

