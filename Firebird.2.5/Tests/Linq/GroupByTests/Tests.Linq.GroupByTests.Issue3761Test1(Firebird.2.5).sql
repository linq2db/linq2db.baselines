-- Firebird.2.5 Firebird

SELECT
	"t1"."Year_1",
	"t1"."Month_1",
	SUM("t1".SKUPAJ)
FROM
	(
		SELECT
			Extract(year from CASE
				WHEN "n".DATUM IS NOT NULL THEN "n".DATUM
				ELSE CAST('0001-01-01' AS timestamp)
			END) as "Year_1",
			Extract(month from CASE
				WHEN "n".DATUM IS NOT NULL THEN "n".DATUM
				ELSE CAST('0001-01-01' AS timestamp)
			END) as "Month_1",
			"n".SKUPAJ
		FROM
			"Issue3761Table" "n"
		WHERE
			"n".DATUM < CAST('2019-01-01' AS TimeStamp)
	) "t1"
GROUP BY
	"t1"."Year_1",
	"t1"."Month_1"

