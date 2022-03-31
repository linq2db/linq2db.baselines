BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Cast((2010 + "t"."ID") as VarChar(11)) || '-10-1') as Date)
FROM
	"LinqDataTypes" "t"

