BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Floor(Log(2, Cast("p"."MoneyValue" as Double)))
FROM
	"LinqDataTypes" "p"
WHERE
	(Floor(Log(2, Cast("p"."MoneyValue" as Double))) <> 0.10000000000000001 OR Floor(Log(2, Cast("p"."MoneyValue" as Double))) IS NULL)

