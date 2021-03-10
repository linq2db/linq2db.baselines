BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Round(Cast("p"."MoneyValue" as Double), 0)
FROM
	"LinqDataTypes" "p"
WHERE
	(Round(Cast("p"."MoneyValue" as Double), 0) <> 0 OR Round(Cast("p"."MoneyValue" as Double), 0) IS NULL)

