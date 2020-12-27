BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Floor("t"."MoneyValue") as Integer)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor("t"."MoneyValue") as Integer) > 0

