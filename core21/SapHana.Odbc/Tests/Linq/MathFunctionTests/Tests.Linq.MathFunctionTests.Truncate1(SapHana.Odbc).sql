BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Round("p"."MoneyValue", 0, ROUND_DOWN)
FROM
	"LinqDataTypes" "p"
WHERE
	(Round("p"."MoneyValue", 0, ROUND_DOWN) <> 0.1 OR Round("p"."MoneyValue", 0, ROUND_DOWN) IS NULL)

