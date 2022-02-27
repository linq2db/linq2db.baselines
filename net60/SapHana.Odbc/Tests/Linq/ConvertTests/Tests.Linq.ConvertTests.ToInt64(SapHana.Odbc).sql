BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Cast(Floor("t"."MoneyValue") as BigInt)
FROM
	"LinqDataTypes" "t"
WHERE
	Cast(Floor("t"."MoneyValue") as BigInt) > 0

