BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t"."Value_1"
FROM
	(
		SELECT
			Round(CAST(-"p"."MoneyValue" AS Double), 0, ROUND_DOWN) as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Value_1" <> 0.10000000000000001

