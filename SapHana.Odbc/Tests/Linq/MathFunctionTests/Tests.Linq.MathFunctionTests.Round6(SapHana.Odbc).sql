-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	ROUND(CAST("t"."MoneyValue" AS Double)) <> 0

