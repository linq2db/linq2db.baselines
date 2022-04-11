BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast("t"."MoneyValue" as Real)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast("t"."MoneyValue" as Real) > 0

