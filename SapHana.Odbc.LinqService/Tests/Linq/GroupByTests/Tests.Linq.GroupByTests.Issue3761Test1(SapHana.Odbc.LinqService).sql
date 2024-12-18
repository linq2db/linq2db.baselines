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
	"t1"."Year_1",
	"t1"."Month_1",
	SUM("t1"."SKUPAJ")
FROM
	(
		SELECT
			Year(CASE
				WHEN "n"."DATUM" IS NOT NULL THEN "n"."DATUM"
				ELSE '0001-01-01'
			END) as "Year_1",
			Month(CASE
				WHEN "n"."DATUM" IS NOT NULL THEN "n"."DATUM"
				ELSE '0001-01-01'
			END) as "Month_1",
			"n"."SKUPAJ"
		FROM
			"Issue3761Table" "n"
		WHERE
			"n"."DATUM" < '2019-01-01' AND "n"."DATUM" IS NOT NULL
	) "t1"
GROUP BY
	"t1"."Year_1",
	"t1"."Month_1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3761Table"

