BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST(CAST("p"."MoneyValue" AS Double) AS Integer) > 0

