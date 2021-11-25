BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Year("a_Types"."DateTimeValue")
FROM
	"Parent" "selectParam"
		LEFT JOIN "LinqDataTypes" "a_Types" ON "selectParam"."ParentID" = "a_Types"."ID"
GROUP BY
	Year("a_Types"."DateTimeValue")

