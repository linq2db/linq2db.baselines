BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	CAST(Year("t"."DateTimeValue") || '-01-01' AS Date)
FROM
	"LinqDataTypes" "t"

