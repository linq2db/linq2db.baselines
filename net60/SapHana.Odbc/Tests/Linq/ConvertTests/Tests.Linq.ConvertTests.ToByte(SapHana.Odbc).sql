BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Floor("t"."MoneyValue") as TinyInt)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor("t"."MoneyValue") as TinyInt) > 0

