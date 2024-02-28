BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Round(Cast((-"p"."MoneyValue") as Double), 0, ROUND_DOWN)
FROM
	"LinqDataTypes" "p"
WHERE
	Round(Cast((-"p"."MoneyValue") as Double), 0, ROUND_DOWN) <> 0.10000000000000001

