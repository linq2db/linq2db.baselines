BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Floor("t"."MoneyValue") as Decimal)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor("t"."MoneyValue") as Decimal) > 0

