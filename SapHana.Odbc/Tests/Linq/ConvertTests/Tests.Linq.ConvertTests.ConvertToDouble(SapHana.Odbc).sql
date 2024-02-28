BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast("t"."MoneyValue" as Double)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast("t"."MoneyValue" as Double) > 0

