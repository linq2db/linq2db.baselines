BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

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
			"n"."DATUM" < To_Timestamp('2019-01-01 00:00:00.000')
	) "t1"
GROUP BY
	"t1"."Year_1",
	"t1"."Month_1"

