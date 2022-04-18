BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Cast((2010 + "t"."ID") as NVarChar(11)) || '-01-01') as Date)
FROM
	"LinqDataTypes" "t"

