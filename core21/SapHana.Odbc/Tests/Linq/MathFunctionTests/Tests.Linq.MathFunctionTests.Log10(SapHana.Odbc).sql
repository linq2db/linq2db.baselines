BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Floor(Log(10,Cast("p"."MoneyValue" as Double)))
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Log(10,Cast("p"."MoneyValue" as Double))) <> 0.10000000000000001 OR Floor(Log(10,Cast("p"."MoneyValue" as Double))) IS NULL)

