BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Floor(Atan2(Cast("p"."MoneyValue" as Double) / 15, 0) * 15)
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Atan2(Cast("p"."MoneyValue" as Double) / 15, 0) * 15) <> 0.10000000000000001 OR Floor(Atan2(Cast("p"."MoneyValue" as Double) / 15, 0) * 15) IS NULL)

