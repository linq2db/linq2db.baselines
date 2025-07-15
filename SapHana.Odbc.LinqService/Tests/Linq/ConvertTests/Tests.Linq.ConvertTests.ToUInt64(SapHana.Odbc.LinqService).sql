BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST("p"."MoneyValue" AS Decimal) > 0

