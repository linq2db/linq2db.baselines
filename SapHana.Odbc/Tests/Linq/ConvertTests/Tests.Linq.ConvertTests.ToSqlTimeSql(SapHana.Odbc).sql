-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST(Hour("t"."DateTimeValue") || ':01:01' AS Time)
FROM
	"LinqDataTypes" "t"

