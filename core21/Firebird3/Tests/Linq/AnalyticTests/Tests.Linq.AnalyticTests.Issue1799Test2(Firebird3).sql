BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue1799Table1"
(
	"EventUser" Int       NOT NULL,
	"ProcessID" Int       NOT NULL,
	"EventTime" TimeStamp NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue1799Table2"
(
	"UserId"     Int                                    NOT NULL,
	"UserGroups" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue1799Table3"
(
	"ProcessID"   Int                                    NOT NULL,
	"ProcessName" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Issue1799Table3"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Issue1799Table2"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Issue1799Table1"

