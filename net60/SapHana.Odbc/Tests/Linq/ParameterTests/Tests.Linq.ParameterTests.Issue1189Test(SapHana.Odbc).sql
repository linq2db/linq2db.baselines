BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue1189Customer"
(
	"ID"   Integer       NOT NULL,
	"NAME" NVarChar(255) NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @DateTime  -- DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	"k_1"."ID",
	"k_1"."NAME",
	?
FROM
	"Issue1189Customer" "k_1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue1189Customer"

