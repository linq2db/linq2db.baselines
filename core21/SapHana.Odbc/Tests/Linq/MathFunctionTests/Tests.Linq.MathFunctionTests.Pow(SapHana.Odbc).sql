BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Floor(Power(Cast("p"."MoneyValue" as Double), 3))
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Power(Cast("p"."MoneyValue" as Double), 3)) <> 0 OR Floor(Power(Cast("p"."MoneyValue" as Double), 3)) IS NULL)

