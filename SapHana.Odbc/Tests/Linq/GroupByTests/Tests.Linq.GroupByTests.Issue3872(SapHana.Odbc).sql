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
	MAX("r"."PersonID"),
	CAST('MAX' AS NVarChar(255)),
	NULL
FROM
	"Person" "r"
UNION ALL
SELECT
	NULL,
	NULL,
	"r_1"."PersonID"
FROM
	"Person" "r_1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3761Table"

