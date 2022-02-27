BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Cast(Hour("t"."DateTimeValue") as NVarChar(100)) || ':01:01') as Time)
FROM
	"LinqDataTypes" "t"

