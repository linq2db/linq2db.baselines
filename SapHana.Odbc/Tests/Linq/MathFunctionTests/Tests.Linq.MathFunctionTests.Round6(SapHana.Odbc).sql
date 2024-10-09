BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CAST("t"."MoneyValue" AS Double)
FROM
	"LinqDataTypes" "t"
WHERE
	ROUND(CAST("t"."MoneyValue" AS Double)) <> 0

