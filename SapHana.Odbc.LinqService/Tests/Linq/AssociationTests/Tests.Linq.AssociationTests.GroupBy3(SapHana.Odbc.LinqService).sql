BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"g_2"."Year_1"
FROM
	(
		SELECT
			Year("a_Types"."DateTimeValue") as "Year_1"
		FROM
			"Parent" "g_1"
				LEFT JOIN "LinqDataTypes" "a_Types" ON "g_1"."ParentID" = "a_Types"."ID"
	) "g_2"
GROUP BY
	"g_2"."Year_1"

