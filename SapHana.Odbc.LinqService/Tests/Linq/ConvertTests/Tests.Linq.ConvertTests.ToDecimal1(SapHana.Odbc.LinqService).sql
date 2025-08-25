BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	CAST("t"."MoneyValue" * 1000 AS Decimal(10, 4))
FROM
	"LinqDataTypes" "t"

