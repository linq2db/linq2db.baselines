BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	CAST(Year("t"."DateTimeValue") || '-01-01 00:20:00' AS Timestamp)
FROM
	"LinqDataTypes" "t"

