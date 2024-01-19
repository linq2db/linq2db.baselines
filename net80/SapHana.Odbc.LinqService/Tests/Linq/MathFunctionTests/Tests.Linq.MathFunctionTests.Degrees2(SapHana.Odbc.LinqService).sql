BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast("p"."MoneyValue" as Double) * 57.295779513082323
FROM
	"LinqDataTypes" "p"
WHERE
	Cast("p"."MoneyValue" as Double) * 57.295779513082323 <> 0.10000000000000001

