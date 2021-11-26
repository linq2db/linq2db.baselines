BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Cast(Year("t"."DateTimeValue") as NVarChar(100)) || '-01-01 00:20:00') as SecondDate)
FROM
	"LinqDataTypes" "t"

