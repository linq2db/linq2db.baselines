BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Cast(Year("t"."DateTimeValue") as NVarChar(100)) || '-01-01') as Date)
FROM
	"LinqDataTypes" "t"

