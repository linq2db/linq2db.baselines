BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	CAST("t"."MoneyValue" * 1000 AS Decimal(38, 10))
FROM
	"LinqDataTypes" "t"

