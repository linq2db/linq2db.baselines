BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Cast(Year("t"."DateTimeValue") as VarChar(11)) || '-01-01 00:20:00') as SecondDate)
FROM
	"LinqDataTypes" "t"

