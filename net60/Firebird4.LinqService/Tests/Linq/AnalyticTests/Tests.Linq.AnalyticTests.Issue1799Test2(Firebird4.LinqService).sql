﻿BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "Issue1799Table1"
(
	"EventUser" Int       NOT NULL,
	"ProcessID" Int       NOT NULL,
	"EventTime" TimeStamp NOT NULL
)

BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "Issue1799Table2"
(
	"UserId"     Int                                    NOT NULL,
	"UserGroups" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "Issue1799Table3"
(
	"ProcessID"   Int                                    NOT NULL,
	"ProcessName" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT FIRST @take
	"q"."User_1",
	"p"."ProcessName",
	"u"."UserGroups",
	Sum("q"."Diff")
FROM
	(
		SELECT
			"x"."EventUser" as "User_1",
			"x"."ProcessID" as "Proc",
			DateDiff(minute, LAG("x"."EventTime") OVER(PARTITION BY "x"."EventUser", "x"."ProcessID" ORDER BY "x"."EventTime"), "x"."EventTime") as "Diff"
		FROM
			"Issue1799Table1" "x"
	) "q"
		INNER JOIN "Issue1799Table2" "u" ON "u"."UserId" = "q"."User_1"
		INNER JOIN "Issue1799Table3" "p" ON "p"."ProcessID" = "q"."Proc"
GROUP BY
	"q"."User_1",
	"u"."UserGroups",
	"p"."ProcessName"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1799Table3"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1799Table2"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1799Table1"';
END

