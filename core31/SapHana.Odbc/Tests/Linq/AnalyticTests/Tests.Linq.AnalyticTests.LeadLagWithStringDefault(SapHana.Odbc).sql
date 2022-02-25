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
DECLARE @ProcessID  -- Int32
SET     @ProcessID = 1
DECLARE @ProcessName NVarChar(3) -- String
SET     @ProcessName = 'One'

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ProcessID  -- Int32
SET     @ProcessID = 2
DECLARE @ProcessName NVarChar(3) -- String
SET     @ProcessName = 'Two'

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	LEAD("p"."ProcessName", 1, 'None') OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	LAG("p"."ProcessName", 1, 'None') OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1799Table3"

