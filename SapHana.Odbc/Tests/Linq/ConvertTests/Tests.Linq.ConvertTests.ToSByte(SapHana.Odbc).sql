BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."MoneyValue"
FROM
	"LinqDataTypes" "p"
WHERE
	CAST("p"."MoneyValue" AS TinyInt) > 0

