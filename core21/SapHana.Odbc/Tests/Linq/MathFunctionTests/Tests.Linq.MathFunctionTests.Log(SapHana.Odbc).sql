BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Floor(Ln(Cast("p"."MoneyValue" as Double)))
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Ln(Cast("p"."MoneyValue" as Double))) <> 0.10000000000000001 OR Floor(Ln(Cast("p"."MoneyValue" as Double))) IS NULL)

