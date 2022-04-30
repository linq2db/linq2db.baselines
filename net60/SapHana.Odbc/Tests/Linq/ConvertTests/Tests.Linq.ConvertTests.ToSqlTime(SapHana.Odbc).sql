BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Cast(Hour("t"."DateTimeValue") as VarChar(11)) || ':01:01') as Time)
FROM
	"LinqDataTypes" "t"

