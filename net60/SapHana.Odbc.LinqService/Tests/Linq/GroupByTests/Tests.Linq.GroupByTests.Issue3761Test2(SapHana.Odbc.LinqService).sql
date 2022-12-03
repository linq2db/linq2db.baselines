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
DECLARE @_default_2  -- DateTime
SET     @_default_2 = '0001-01-01'
DECLARE @_default_3  -- DateTime
SET     @_default_3 = '0001-01-01'
DECLARE @DATUM_1  -- DateTime
SET     @DATUM_1 = '2019-01-01'

SELECT
	"t2"."Year_1",
	"t2"."Month_1",
	"t2"."Sum_1"
FROM
	(
		SELECT
			"t1"."Year_1",
			"t1"."Month_1",
			Sum("t1"."SKUPAJ") as "Sum_1"
		FROM
			(
				SELECT
					Year(Coalesce("n"."DATUM", ?)) as "Year_1",
					Month(Coalesce("n"."DATUM", ?)) as "Month_1",
					"n"."SKUPAJ"
				FROM
					"Issue3761Table" "n"
				WHERE
					"n"."DATUM" < ?
			) "t1"
		GROUP BY
			"t1"."Year_1",
			"t1"."Month_1"
	) "t2"
UNION ALL
SELECT
	"t4"."Year_1",
	"t4"."Month_1",
	"t4"."Sum_1"
FROM
	(
		SELECT
			"t3"."Year_1",
			"t3"."Month_1",
			Sum("t3"."SKUPAJ") as "Sum_1"
		FROM
			(
				SELECT
					Year(Coalesce("n_1"."DATUM", ?)) as "Year_1",
					Month(Coalesce("n_1"."DATUM", ?)) as "Month_1",
					"n_1"."SKUPAJ"
				FROM
					"Issue3761Table" "n_1"
				WHERE
					"n_1"."DATUM" >= ?
			) "t3"
		GROUP BY
			"t3"."Year_1",
			"t3"."Month_1"
	) "t4"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3761Table"

