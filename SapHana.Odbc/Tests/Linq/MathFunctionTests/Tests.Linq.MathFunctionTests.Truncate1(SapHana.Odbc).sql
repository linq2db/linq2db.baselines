-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Value_1"
FROM
	(
		SELECT
			Round("p"."MoneyValue", 0, ROUND_DOWN) as "Value_1"
		FROM
			"LinqDataTypes" "p"
	) "t"
WHERE
	"t"."Value_1" <> 0.1

