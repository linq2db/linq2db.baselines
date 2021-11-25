BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Cast(Year("p"."DateTimeValue") as VarChar(11)) || '-10-1') as Date)
FROM
	"LinqDataTypes" "p"
WHERE
	Month(Cast((Cast(Year("p"."DateTimeValue") as VarChar(11)) || '-10-1') as Date)) = 10

