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
DECLARE @_default  -- DateTime
SET     @_default = '0001-01-01'
DECLARE @_default_1  -- DateTime
SET     @_default_1 = '0001-01-01'
DECLARE @DATUM  -- DateTime
SET     @DATUM = '2019-01-01'

SELECT
	"t1"."Key_1",
	"t1"."Key_2",
	Sum("t1"."SKUPAJ")
FROM
	(
		SELECT
			Year(Coalesce("n"."DATUM", ?)) as "Key_1",
			Month(Coalesce("n"."DATUM", ?)) as "Key_2",
			"n"."SKUPAJ"
		FROM
			"Issue3761Table" "n"
		WHERE
			"n"."DATUM" < ?
	) "t1"
GROUP BY
	"t1"."Key_1",
	"t1"."Key_2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3761Table"

