BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast("t"."MoneyValue" as Decimal)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast("t"."MoneyValue" as Decimal) > 0

