-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST("p"."MoneyValue" AS Double)
FROM
	"LinqDataTypes" "p"
WHERE
	CAST("p"."MoneyValue" AS Double) > 0

