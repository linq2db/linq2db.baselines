BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Floor(-("p"."MoneyValue" + 1))
FROM
	"LinqDataTypes" "p"
WHERE
	Floor(-("p"."MoneyValue" + 1)) <> 0

