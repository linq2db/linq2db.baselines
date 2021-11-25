BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Year("selectParam"."DateTimeValue")
FROM
	"LinqDataTypes" "selectParam"
GROUP BY
	Year("selectParam"."DateTimeValue")

