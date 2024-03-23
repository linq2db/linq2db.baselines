BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Hour("t"."DateTimeValue") || ':01:01') as Time)
FROM
	"LinqDataTypes" "t"

