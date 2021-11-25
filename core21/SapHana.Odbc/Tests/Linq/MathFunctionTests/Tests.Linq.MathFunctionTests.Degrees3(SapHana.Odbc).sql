BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Cast(Floor("p"."MoneyValue") as Integer) as Double) * 57.295779513082323
FROM
	"LinqDataTypes" "p"
WHERE
	(Cast((Cast(Cast(Floor("p"."MoneyValue") as Integer) as Double) * 57.295779513082323) as Double) <> 0.10000000000000001 OR Cast((Cast(Cast(Floor("p"."MoneyValue") as Integer) as Double) * 57.295779513082323) as Double) IS NULL)

