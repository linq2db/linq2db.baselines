BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"g_2"."Year_1"
FROM
	(
		SELECT
			Extract(year from "g_1"."DateTimeValue") as "Year_1"
		FROM
			"LinqDataTypes" "g_1"
	) "g_2"
GROUP BY
	"g_2"."Year_1"

