BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Floor(Exp(Cast("p"."MoneyValue" as Double)))
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Exp(Cast("p"."MoneyValue" as Double))) <> 0.10000000000000001 OR Floor(Exp(Cast("p"."MoneyValue" as Double))) IS NULL)

