﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1799Table1"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1799Table1"
			(
				"EventUser" Int       NOT NULL,
				"ProcessID" Int       NOT NULL,
				"EventTime" TimeStamp NOT NULL
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1799Table2"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1799Table2"
			(
				"UserId"     Int                                    NOT NULL,
				"UserGroups" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1799Table3"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table3')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1799Table3"
			(
				"ProcessID"   Int                                    NOT NULL,
				"ProcessName" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT FIRST @take
	"g_1"."User_1",
	"p"."ProcessName",
	"u"."UserGroups",
	SUM("g_1"."Diff") / 60
FROM
	(
		SELECT
			DateDiff(minute, LAG("q"."EventTime") OVER(PARTITION BY "q"."EventUser", "q"."ProcessID" ORDER BY "q"."EventTime"), "q"."EventTime") as "Diff",
			"q"."EventUser" as "User_1",
			"q"."ProcessID" as "Proc"
		FROM
			"Issue1799Table1" "q"
	) "g_1"
		INNER JOIN "Issue1799Table2" "u" ON "u"."UserId" = "g_1"."User_1"
		INNER JOIN "Issue1799Table3" "p" ON "p"."ProcessID" = "g_1"."Proc"
WHERE
	"g_1"."Diff" > 0 AND "g_1"."Diff" <= 5
GROUP BY
	"g_1"."User_1",
	"u"."UserGroups",
	"p"."ProcessName"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1799Table3"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1799Table2"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1799Table1"';
END

