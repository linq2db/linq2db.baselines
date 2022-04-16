﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1799Table1"
(
	"EventUser" Int       NOT NULL,
	"ProcessID" Int       NOT NULL,
	"EventTime" timestamp NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1799Table2"
(
	"UserId"     Int           NOT NULL,
	"UserGroups" NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1799Table3"
(
	"ProcessID"   Int           NOT NULL,
	"ProcessName" NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"q"."User_1",
	"p"."ProcessName",
	"u"."UserGroups",
	Sum("q"."Diff")
FROM
	(
		SELECT
			((Days("x"."EventTime") - Days(LAG("x"."EventTime") OVER(PARTITION BY "x"."EventUser", "x"."ProcessID" ORDER BY "x"."EventTime"))) * 86400 + MIDNIGHT_SECONDS("x"."EventTime") - MIDNIGHT_SECONDS(LAG("x"."EventTime") OVER(PARTITION BY "x"."EventUser", "x"."ProcessID" ORDER BY "x"."EventTime"))) / 60 as "Diff",
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
FETCH FIRST 10 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1799Table3"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1799Table2"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1799Table1"';
END

