BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3761Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3761Table"
(
	"LETO"     Integer   NOT NULL,
	"STEVILKA" Integer   NOT NULL,
	"DATUM"    Timestamp     NULL,
	"SKUPAJ"   Decimal       NULL,

	PRIMARY KEY ("LETO", "STEVILKA")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Max("selectParam"."PersonID")
FROM
	"Person" "selectParam"
UNION ALL
SELECT
	"r"."PersonID"
FROM
	"Person" "r"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3761Table"

