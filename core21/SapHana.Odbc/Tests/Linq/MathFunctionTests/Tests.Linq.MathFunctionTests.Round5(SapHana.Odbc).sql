BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Round("p"."MoneyValue", 0)
FROM
	"LinqDataTypes" "p"
WHERE
	Round("p"."MoneyValue", 0) <> 0

