BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST("p"."MoneyValue" AS Integer) > 0

