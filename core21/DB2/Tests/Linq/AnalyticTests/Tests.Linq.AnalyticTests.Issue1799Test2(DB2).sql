BeforeExecute
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

DROP TABLE "Issue1799Table3"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue1799Table2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue1799Table1"

