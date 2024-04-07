BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Lpad((2010 + "t"."ID"),4,'0') || '-01-01') as Date)
FROM
	"LinqDataTypes" "t"

