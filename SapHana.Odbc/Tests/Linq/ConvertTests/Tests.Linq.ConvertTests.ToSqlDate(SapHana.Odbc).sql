BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast((Year("t"."DateTimeValue") || '-01-01') as Date)
FROM
	"LinqDataTypes" "t"

