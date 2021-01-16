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

CREATE COLUMN TABLE "Issue1799Table2"
(
	"UserId"     Integer       NOT NULL,
	"UserGroups" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1799Table3"
(
	"ProcessID"   Integer       NOT NULL,
	"ProcessName" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1799Table3"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1799Table2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1799Table1"

