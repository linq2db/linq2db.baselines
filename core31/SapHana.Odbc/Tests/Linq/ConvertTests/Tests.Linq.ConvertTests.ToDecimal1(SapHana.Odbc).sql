BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(("t"."MoneyValue" * 1000) as Decimal(10,4))
FROM
	"LinqDataTypes" "t"

