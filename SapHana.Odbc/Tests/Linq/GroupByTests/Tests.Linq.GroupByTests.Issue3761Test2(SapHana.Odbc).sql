﻿BeforeExecute
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
			"n"."DATUM" < '2019-01-01'
	) "t1"
GROUP BY
	"t1"."Year_1",
	"t1"."Month_1"
UNION ALL
SELECT
	"t2"."Year_1",
	"t2"."Month_1",
	SUM("t2"."SKUPAJ")
FROM
	(
		SELECT
			Year(CASE
				WHEN "n_1"."DATUM" IS NOT NULL THEN "n_1"."DATUM"
				ELSE '0001-01-01'
			END) as "Year_1",
			Month(CASE
				WHEN "n_1"."DATUM" IS NOT NULL THEN "n_1"."DATUM"
				ELSE '0001-01-01'
			END) as "Month_1",
			"n_1"."SKUPAJ"
		FROM
			"Issue3761Table" "n_1"
		WHERE
			"n_1"."DATUM" >= '2019-01-01'
	) "t2"
GROUP BY
	"t2"."Year_1",
	"t2"."Month_1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3761Table"

