-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(Year("t"."DateTimeValue") || '-01-01 00:20:00' AS SecondDate)
FROM
	"LinqDataTypes" "t"

