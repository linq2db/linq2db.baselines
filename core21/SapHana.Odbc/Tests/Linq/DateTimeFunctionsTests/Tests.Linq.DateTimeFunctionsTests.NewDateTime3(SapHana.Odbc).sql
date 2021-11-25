BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Cast(Year("p"."DateTimeValue") as VarChar(11)) || '-10-1 20:35:44') as TimeStamp)
FROM
	"LinqDataTypes" "p"
WHERE
	Month(Cast((Cast(Year("p"."DateTimeValue") as VarChar(11)) || '-10-1 20:35:44') as TimeStamp)) = 10

