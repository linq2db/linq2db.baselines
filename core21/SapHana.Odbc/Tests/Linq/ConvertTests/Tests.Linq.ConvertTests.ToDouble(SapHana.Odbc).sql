BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Floor(Cast("t"."MoneyValue" as Double)) as Integer)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor(Cast("t"."MoneyValue" as Double)) as Integer) > 0

